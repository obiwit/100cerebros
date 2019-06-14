-- p)
SELECT DISTINCT t.title, t.ytd_sales, CONCAT( a.au_fname, ' ', a.au_lname) AS author, 
		t.ytd_sales * t.price AS faturacao, 
		(t.royalty / 100.0) * (t.ytd_sales * t.price) * (ta.royaltyper / 100.0) AS auth_revenue,
		(t.ytd_sales * t.price) - (t.royalty / 100.0 * t.ytd_sales * t.price) AS pub_revenue
FROM (titles AS t JOIN titleauthor AS ta ON t.title_id = ta.title_id) 
		JOIN authors AS a ON a.au_id = ta.au_id
WHERE t.ytd_sales > 0;