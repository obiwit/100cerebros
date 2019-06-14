-- b)
-- Crie um stored procedure que retorne um record-set com os
-- funcionários gestores de departamentos, assim como o ssn e
-- número de anos (como gestor) do funcionário mais antigo dessa lista.

-- DROP PROCEDURE company.p_ManagersRecordSet;
GO
CREATE PROCEDURE company.p_ManagersRecordSet 
	@OldestManagerSSN DECIMAL(9,0) OUTPUT,
	@OldestManagerYears INT OUTPUT
AS
BEGIN
	SELECT CONCAT(Fname, ' ', Minit, '. ', Lname) AS ManagerName, Ssn
	FROM company.employee;

	SELECT TOP 1 @OldestManagerSSN = Mgr_ssn, 
				 @OldestManagerYears = DATEDIFF(yy, Mgr_start_date, CAST(GETDATE() AS DATE))
	FROM company.department
	WHERE Mgr_start_date IS NOT NULL
	ORDER BY Mgr_start_date;
END
GO
/*
-- test
DECLARE @MgrSSN DECIMAL(9,0), @MgrYears INT;
EXEC company.p_ManagersRecordSet @MgrSSN OUTPUT, @MgrYears OUTPUT;
PRINT CONCAT('Oldest manager SSN: ', @MgrSSN);
PRINT CONCAT('Oldest manager years as manager: ', @MgrYears);
*/



-- d)
-- Crie um trigger que não permita que determinado funcionário
-- tenha um vencimento superior ao vencimento do gestor do seu
-- departamento. Nestes casos, o trigger deve ajustar o salário
-- do funcionário para um valor igual ao salário do gestor menos
-- uma unidade. 

CREATE TRIGGER WageLimiter ON company.employee
AFTER INSERT, UPDATE
AS
BEGIN
	UPDATE company.employee
	SET Salary = outlier_employees.Salary - 1
	FROM
		(SELECT i.Ssn, e.Salary
		FROM inserted AS i JOIN employee AS e ON i.Super_ssn = e.Ssn
		WHERE i.Salary >= e.Salary) AS outlier_employees
	WHERE company.employee.Ssn = outlier_employees.Ssn;
END
GO
/*
-- test
DELETE FROM company.employee WHERE Ssn = 123682247;
DELETE FROM company.employee WHERE Ssn = 123682246;
DELETE FROM company.employee WHERE Ssn = 123682245;

INSERT INTO company.employee (Fname, Lname, Ssn, Salary, Super_ssn, Dno) 
VALUES 
('Teste', 'Trigger', 123682245, 2000.0, NULL, 3),
('Teste', 'Trigger', 123682246, 1450.0, 123682245, 3),
('Teste', 'Trigger', 123682247, 2100, 123682245, 3);

UPDATE company.employee SET Salary = 5000 WHERE Ssn = 123682246;
SELECT * FROM company.employee;
*/


-- f
-- Crie uma UDF que, para determinado departamento (dno), retorne os
-- funcionários com um vencimento superior à média dos vencimentos 
-- desse departamento;

-- DROP FUNCTION company.AboveAVGSalaries;
GO
CREATE FUNCTION company.AboveAVGSalaries(@dnum INT)
RETURNS @EmployeeInfo TABLE (
	employee_name		VARCHAR(40),
	employee_ssn		DECIMAL(9,0),
	employee_salary		DECIMAL(11,2))
AS
BEGIN
	INSERT @EmployeeInfo (employee_name, employee_ssn, employee_salary)
	
		SELECT CONCAT(Fname, ' ', Minit, '. ', Lname) AS [name], Ssn, Salary
		FROM employee
		WHERE Dno = @dnum
			AND Salary > (SELECT AVG(Salary) FROM employee WHERE Dno = @dnum);

	RETURN;
END
GO
/*
-- test
SELECT * FROM company.AboveAVGSalaries(3);
*/

-- g
-- Crie uma UDF que, para determinado departamento, retorne um
-- record-set com os projetos desse departamento. Para cada projeto
-- devemos ter um atributo com seu o orçamento mensal de mão de obra
-- e outra coluna com o valor acumulado do orçamento.

-- DROP FUNCTION company.ProjectInfo;
GO
CREATE FUNCTION company.ProjectInfo(@dnum INT)
RETURNS @ProjectInfo TABLE (
	pname		VARCHAR(20),
	pnumber		INT,
	plocation 	VARCHAR(60),
	dnum 		INT,
	budget		DECIMAL(8,2),
	totalbudget	DECIMAL(8,2))
AS
BEGIN
	DECLARE @pnumber		INT;
	DECLARE @pname			VARCHAR(20);
	DECLARE @plocation		VARCHAR(60);
	DECLARE @budget			DECIMAL(8,2);
	DECLARE @totalbudget	DECIMAL(8,2);
	DECLARE @totalhours		DECIMAL(7,1);

	-- iterate over each projetc using cursors
	DECLARE cur CURSOR FORWARD_ONLY READ_ONLY LOCAL
	FOR SELECT Pname, Pnumber, Plocation
		FROM company.project
		WHERE Dnum = @dnum;

	SET @totalbudget = 0;

	OPEN cur;
    FETCH NEXT FROM cur INTO @pname, @pnumber, @plocation;
    WHILE @@FETCH_STATUS = 0 BEGIN

		-- calculate budget ("hourly salary" * hours worked)
		SELECT @budget = SUM(w.Hours / 40 * e.Salary)
		FROM company.works_on AS w JOIN company.employee AS e ON w.Essn = e.Ssn
		WHERE w.Pno = @pnumber;

		-- calculate total budget (sum of budgets)
		SET @totalbudget += @budget;

		-- insert into table
		INSERT @ProjectInfo (pname, pnumber, plocation, dnum, budget, totalbudget) VALUES
			(@pname, @pnumber, @plocation, @dnum, @budget, @totalbudget);

		FETCH NEXT FROM cur INTO @pname, @pnumber, @plocation;
    END

    CLOSE cur;
    DEALLOCATE cur;

	RETURN;
END
GO
/*
-- test
SELECT * FROM company.ProjectInfo(3);
*/


GO
-- i
-- Relativamente aos stored procedure e UDFs, enumere as suas
-- mais valias e as características que as distingue. Dê exemplos
-- de situações em que se deve utiliza cada uma destas ferramentas;

/*
SPs (Stored Procedures) são um conjunto de intruções T-SQL (uma batch)
	armazenadas sob um dado nome. São compilados uma única vez ("single
	execution plan"), permitindo uma execuação mais rápida (pois, após
	a primeira execução, o SP passa a ficar na memória cache). Podem ter
	parâmetros de entrada, de saída, e devolver record sets (conjunto de
	registos). Podem ser system SP (criados na master DB) ou locais 
	(definidos num BD local).
UDFs (User Defined Functions) são semelhantes aos SPs, mas além da lógica
	e consultas complexas, podem ainda ser usadas como fontes de dados 
	(equivalentes a "vistas parametrizáveis"). Podem ser de 3 tipos: 
	escalares, inline table-valued, e multi-statement table-valued. 

SPs devem ser utilizados em situações onde é neessário utilizar funcões não
	deterministas (i.e. GETDATE()) ou blocos TRY/CATCH ou em casos que requerem
	encapsulamento em transações. Quando queremos alterar objetos da BD, temos 
	necessariamente que utilizar SPs (UDFs não podem modificar valores fora do
	scope da sua função). Um SPs pode ainda invocar uma ou mais UDFs, mas o 
	contrário (invocar SPs a partir de uma UDF) não é possível.
Por outro lado, as UDFs são usadas quando é necessário que uma tabela seja 
	devolvida. 

As pricipais vantagens dos SPs são que estes são extensíveis (pois 
	permitem começar a criar abstrações e começar a definir um API, além
	de começar a haver uma centralização do código SQL (concentrados num
	único ponto em vez de espalhados 'ad-hoc' pelo sistema) - o que também
	minimiza os erros e facilita os testes), melhor performance	(como já
	referido, devido ao single execution plan, SPs são mais eficientes), 
	e finalmente permitem melhor segurança com a opção de limitar o acesso
	à BD através de apenas SPs.
As principais vantangens das UDFs são que, de forma semlhante às SPs, permitem
	grandes melhorias em termos de performaces (devido a ser compilado uma
	única vez), da facilidade de extensão, centralização e teste. 
	Além disso, ao contrário dos SPs, as UDFs podem ainda ser utilizadas 
	como fontes de dados. Finalmente, Schema Bindings, garantindo a integridade 
	dos objetos utilizados pelas UDFs representam uma outra vantagem das UDFs.

Alguns exemplos de situaçôes são:
	- Queremos que uma tabela seja devolvida para integrar numa cláusula de
		FROM, JOIN, etc. - usar uma UDF
	- Queremos obter um mecanismo parametrizável para a geração de views - usar
		uma UDF
	- Queremos realizar operações de DML (INSERT, UPDATE ou DELETE) em tabelas 
		(não locais) da BD - usar um SP
	- Queremos juntar ou até empilhar as tabelas que resultaram de várias 
		funções e/ou operações - usar uma UDF
	- Queremos tirar partido de transações ou de funções não deterministicas - 
		usar um SP
	- Queremos impedir que um erro interrompa necessariamente a execução do 
		todas as intruções seguintes desse bloco - usar um SP (com TRY/CATCH)
*/