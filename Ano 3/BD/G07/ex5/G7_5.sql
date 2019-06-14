/*
Problema 7.5
Utilizando com referência a base de dados do exercício 6.1:
a) Construa a seguintes views:
*/

-- i. Nome dos títulos e nome dos respetivos autores;
CREATE VIEW BOOK_TITLES(title, author) AS
	SELECT t.title, a.au_fname + ' ' + a.au_lname
	FROM titles AS t JOIN titleauthor AS ta ON t.title_id = ta.title_id
		JOIN authors AS a ON a.au_id = ta.au_id;
GO

-- ii. Nome dos editores e nome dos respetivos funcionários;
CREATE VIEW PUB_EMPL(pub_name, empl_name) AS
	SELECT p.pub_name, e.fname + ' ' + e.minit + '. ' + e.lname
	FROM publishers AS p JOIN employee AS e ON p.pub_id = e.pub_id;
GO

-- iii. Nome das lojas e o nome dos títulos vendidos nessa loja;
CREATE VIEW STORE_TITLES(store_name, book_title) AS
	SELECT st.stor_name, t.title
	FROM stores AS st JOIN sales AS s ON st.stor_id=s.stor_id JOIN titles AS t ON s.title_id = t.title_id;
GO

-- iv. Livros do tipo ‘Business’;
CREATE VIEW titles_business(title_id, title, [type], pub_id, price, notes) AS
	SELECT t.title_id,t.title,t.[type],t.pub_id,t.price,t.notes
	FROM titles AS t
	WHERE t.[type] = 'Business'
	WITH CHECK OPTION;
GO
/*
b) Construa uma consulta tendo como base cada uma das views definidas na alínea a);
*/

-- i. View com nome dos títulos e nome dos respetivos autores;
SELECT * 
FROM BOOK_TITLES
WHERE title LIKE '%Enemy%';

-- ii. View com nome dos editores e nome dos respetivos funcionários;
SELECT * 
FROM PUB_EMPL
WHERE pub_name LIKE '%Books%';

-- iii. Nome das lojas e o nome dos títulos vendidos nessa loja;
SELECT * 
FROM STORE_TITLES
--WHERE store_name LIKE '%News%' or book_title LIKE '%Data%';
WHERE store_name LIKE '%';

-- iv. Livros do tipo ‘Business’;
SELECT * 
FROM titles_business
WHERE title LIKE '%Computer%';

/*
c) Altere as views i e iii da alínea a) para que se possa implementar uma consulta que
as utilize como fonte de dados para implementar a seguinte consulta: “Nome das
lojas e nome dos autores vendidos na loja”;
*/

-- i. View com nome dos títulos e nome dos respetivos autores;
GO
CREATE VIEW STORE_BOOK_TITLES(title, author) AS
	SELECT s.stor_name, t.title, a.au_fname + ' ' + a.au_lname
	FROM titles AS t JOIN titleauthor AS ta ON t.title_id = ta.title_id
		JOIN authors AS a ON a.au_id = ta.au_id
		JOIN sales as sa ON sa.title_id = t.title_id
		JOIN stores as s ON s.stor_id = sa.stor_id
	;
GO

-- SELECT DISTINCT store_name, author FROM STORE_BOOK_TITLES;

-- iii. View com nome das lojas e o nome dos títulos vendidos nessa loja;
GO
ALTER VIEW STORE_TITLES(store_name, title, author) AS
	SELECT st.stor_name, t.title, a.au_fname + ' ' + a.au_lname
	FROM stores AS st JOIN sales AS s ON st.stor_id=s.stor_id 
		JOIN titles AS t ON s.title_id = t.title_id
		JOIN titleauthor AS ta ON t.title_id = ta.title_id
		JOIN authors AS a ON a.au_id = ta.au_id
	;
GO

/*
d) Relativamente à view iv da alínea a) execute o seguinte comando:
insert into titles_business (title_id, title, type, pub_id, price, notes)
values('BDTst1', 'New BD Book','popular_comp', '1389', $30.00, 'A must-read for
DB course.')
*/

SELECT * 
FROM titles_business;
-- i. Teve sucesso na sua execução? Faz sentido?
-- ii. Altere a view (iv da alínea a) para corrigir o problema.
-- iii. Volte a testar a instrução acima.
insert into titles_business (title_id, title, type, pub_id, price, notes)
values('BDTst1', 'New BD Book','popular_comp', '1389', $30.00, 'A must-read for
DB course.');
-- R: Inicialmente tentamos listar todos os elementos da view, mas não encontramos o tuplo inserido.
-- Descobrimos, de seguida, que quando a query acima foi executada o valor foi adicionado à tabela 'tables' da base de dados pubs e não ao view.
-- Como não encontramos mais nenhum problema, assumimos que era a este que o enunciado se referia, contudo não conseguimos arranjar uma solução para adicionar o tuplo à view e não à tabela

