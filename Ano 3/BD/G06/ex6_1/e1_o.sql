-- o)
SELECT DISTINCT t.title, t.ytd_sales, 
		t.ytd_sales * t.price AS faturacao, 
		t.royalty / 100.0 * (t.ytd_sales * t.price) AS auths_revenue,
		(t.ytd_sales * t.price) - (t.royalty / 100.0 * t.ytd_sales * t.price) AS pub_revenue
FROM titles AS t
WHERE t.ytd_sales > 0;
