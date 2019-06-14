-- m)
SELECT titles.type
FROM titles
GROUP BY titles.type
HAVING MAX(advance)>1.5*AVG(advance);