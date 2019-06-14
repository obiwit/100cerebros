-- j)
SELECT DISTINCT titles.title
FROM (stores JOIN sales ON stores.stor_id = sales.stor_id)
		JOIN titles ON titles.title_id = sales.title_id
WHERE stores.stor_name = 'Bookbeat';