-- k)
SELECT authors.au_fname,authors.au_lname
FROM (authors JOIN titleauthor ON authors.au_id=titleauthor.au_id
	JOIN titles ON titles.title_id=titleauthor.title_id)
GROUP BY authors.au_id,authors.au_fname,authors.au_lname
HAVING COUNT(titles.type) > 1;