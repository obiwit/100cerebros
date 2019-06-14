/****************************************************************
 * a) 
 * Obtenha uma lista contendo os projetos e funcionários (ssn e
 * nome completo) que lá trabalham.
 ****************************************************************/
-- π Pname, Pnumber, Plocation, Dnum, Fname, Minit, Lname, Ssn (((project) ⨝ Pnumber=Pno (works_on)) ⨝ Essn = Ssn (employee))

SELECT Pname, Pnumber, Plocation, Dnum, Fname, Minit, Lname, Ssn
FROM (company.project JOIN company.works_on ON Pnumber = Pno)
	JOIN company.employee ON Essn = Ssn;


/****************************************************************
 * b)
 * Obtenha o nome de todos os funcionários supervisionados por
 * ‘Carlos D Gomes’.
 ****************************************************************/
-- π employee.Fname, employee.Minit, employee.Lname ((employee) ⨝ employee.Super_ssn=man.Ssn (ρ man (σ Fname='Carlos' ∧ Minit='D' ∧ Lname='Gomes' (employee))))

SELECT e.Fname, e.Minit, e.Lname
FROM company.employee AS e JOIN 
	(SELECT  * 
		FROM company.employee
		WHERE Fname = 'Carlos' AND Minit='D' AND Lname='Gomes') 
	AS man ON e.Super_ssn = man.Ssn; 


/****************************************************************
 * c)
 * Para cada projeto, listar o seu nome e o número de horas (por
 * semana) gastos nesse projeto por todos os funcionários.
 ****************************************************************/
-- γ Pname; sum(Hours)->total_hours ((project) ⨝ Pnumber=Pno (works_on))

SELECT Pname, SUM(Hours) AS total_hours
FROM company.project JOIN company.works_on ON Pnumber=Pno
GROUP BY Pname;

/****************************************************************
 * d)
 * Obter o nome de todos os funcionários do departamento 3 que
 * trabalham mais de 20 horas por semana no projeto ‘Aveiro Digital'.
 ****************************************************************/
-- π Fname, Minit, Lname (σ Hours>20 ((σ Dno=3 (employee)) ⨝ Ssn=Essn (works_on)) ⨝ Pno=Pnumber (σ Pname='Aveiro Digital' (project)))

SELECT Fname, Minit, Lname
FROM (company.employee JOIN company.works_on ON Ssn=Essn AND Dno=3) 
	JOIN company.project ON Pno=Pnumber AND Pname='Aveiro Digital'
WHERE Hours > 20;


/****************************************************************
 * e)
 * Nome dos funcionários que não trabalham para projetos.
 ****************************************************************/
-- π Fname, Minit, Lname (σ Pno=null ((employee) ⟕ Ssn=Essn (works_on)))

SELECT Fname, Minit, Lname
FROM company.employee LEFT OUTER JOIN company.works_on ON Ssn=Essn
WHERE Pno IS NULL;

/****************************************************************
 * f)
 * Para cada departamento, listar o seu nome e o salário médio
 * dos seus funcionários do sexo feminino.
 ****************************************************************/
-- π Dname, avg_Salary ((γ Dno; avg(Salary)->avg_Salary (σ Sex='F' (employee))) ⨝Dno=Dnumber (department))

SELECT Dname, AVG(Salary) AS avg_Salary
FROM company.employee JOIN company.department ON Dno=Dnumber 
WHERE Sex='F'
GROUP BY Dno, Dname;

/****************************************************************
 * g)
 * Obter uma lista de todos os funcionários com mais do que dois
 * dependentes.
 ****************************************************************/
-- π Fname, Minit, Lname (σ Num_dependents>2 (γ Fname, Minit, Lname, Ssn; count(Essn)->Num_dependents ((employee) ⨝ Ssn=Essn (dependent))))

SELECT Fname, Minit, Lname
FROM company.employee JOIN company.dependent ON Ssn=Essn
GROUP BY Fname, Minit, Lname, Ssn
HAVING COUNT(Essn)> 2;

/****************************************************************
 * h)
 * Obtenha uma lista de todos os funcionários gestores de
 * departamento que não têm dependentes.
 ****************************************************************/
-- π Fname, Minit, Lname (σ Num_dependents=0 (γ Fname, Minit, Lname, Ssn; count(Essn)->Num_dependents (((employee) ⨝ Ssn=Mgr_ssn (department)) ⟕ Ssn=Essn (dependent))))

SELECT Fname, Minit, Lname
FROM (company.employee JOIN company.department ON Ssn=Mgr_ssn) 
	LEFT OUTER JOIN company.dependent ON Ssn=Essn
GROUP BY Fname, Minit, Lname, Ssn
HAVING COUNT(Essn) = 0;

/****************************************************************
 * i)
 * Obter os nomes e endereços de todos os funcionários que
 * trabalham em, pelo menos, um projeto localizado em Aveiro mas
 * o seu departamento não tem nenhuma localização em Aveiro.
 ****************************************************************/
-- π Ssn, Fname, Minit, Lname, Address ((((employee) ⨝Ssn=Essn (works_on)) ⨝ Pno=Pnumber (σ Plocation='Aveiro' ((project)))) ⨝Dno=Dnumber  (σ Dlocation!='Aveiro' ((department) ⟕ (dept_location))))

SELECT DISTINCT Ssn, Fname, Minit, Lname, Address
FROM company.employee 
	JOIN company.works_on ON Ssn=Essn
	JOIN company.project ON Pno=Pnumber AND Plocation='Aveiro'
	JOIN (SELECT company.department.*
		  FROM (company.department LEFT OUTER JOIN company.dept_location 
		  ON company.department.Dnumber=company.dept_location.Dnumber)
		  WHERE Dlocation!='Aveiro' OR Dlocation IS NULL
		 ) AS deps ON Dno=Dnumber;
