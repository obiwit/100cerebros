-- r)
-- Stores which have sold than the average
SELECT stor_id, stor_name, average_sales
FROM (SELECT AVG(qty) AS all_average_sales FROM sales AS sa JOIN stores as s ON sa.stor_id = s.stor_id) AS average_all 
	 JOIN
	 (SELECT s.stor_id, stor_name, AVG(qty) AS average_sales
	  FROM sales AS sa JOIN stores as s ON sa.stor_id = s.stor_id
	  GROUP BY s.stor_id, s.stor_name) AS average_each
	ON average_sales > all_average_sales;

-- (The first inner-SELECT gets all stores' average sales values.)
-- SELECT AVG(qty) AS all_average_sales FROM sales AS sa JOIN stores as s ON sa.stor_id = s.stor_id;

-- (The second inner-SELECT gets each store's average sales values.)
-- SELECT stor_name, AVG(qty) AS average_sales
-- FROM sales AS sa JOIN stores as s ON sa.stor_id = s.stor_id
-- GROUP BY s.stor_id, s.stor_name;
