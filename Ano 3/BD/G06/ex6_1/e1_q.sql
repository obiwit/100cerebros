-- q)
-- (No shop sold all (16) "sellable" books. The highest unique book number selling
-- store was Doc-U-Mat, with 6 different titles sold.
SELECT stor_id, stor_name, unique_titles_sold
FROM (SELECT COUNT(t.title_id) AS total_books FROM titles as t WHERE t.price > 0) AS total_books 
	 JOIN
	 (SELECT s.stor_id, s.stor_name, COUNT(t.title_id) AS unique_titles_sold 
	  FROM ((titles AS t JOIN sales AS sa ON t.title_id = sa.title_id) 
			JOIN stores AS s ON sa.stor_id = s.stor_id)
	  GROUP BY s.stor_id, s.stor_name) AS shop_unique
	ON total_books = unique_titles_sold;


-- (The first inner-SELECT gets the total number of "sellable" books there are.)
-- SELECT COUNT(t.title_id) FROM titles as t WHERE t.price > 0;

-- (The second inner-SELECT gets a shop's number of unique books sold.)
-- SELECT s.stor_id, s.stor_name, COUNT(t.title_id) AS unique_titles_sold 
-- FROM ((titles AS t JOIN sales AS sa ON t.title_id = sa.title_id) 
--		JOIN stores AS s ON sa.stor_id = s.stor_id)
-- GROUP BY s.stor_id, s.stor_name;



