-- h)
SELECT p.pub_id, p.pub_name, SUM(t.ytd_sales) AS total_sales
FROM publishers AS p JOIN titles AS t
ON p.pub_id = t.pub_id
GROUP BY p.pub_id, p.pub_name;