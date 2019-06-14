-- g)
SELECT DISTINCT p.pub_name 
FROM publishers AS p JOIN titles AS t 
ON p.pub_id = t.pub_id 
WHERE t.type = 'business';