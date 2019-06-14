-- n)
SELECT T.title,
		A.au_fname as first_name,
		A.au_lname as last_name,
		(TA.royaltyper/100.0)*(T.royalty/100.0)*ytd_sales*price as profit
FROM titles as T JOIN titleauthor as TA ON T.title_id=TA.title_id JOIN authors as A ON TA.au_id=A.au_id;
