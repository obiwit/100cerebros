-- t)
SELECT P.pub_name,ST.stor_id
FROM publishers AS P, stores AS ST
GROUP BY P.pub_name,ST.stor_id
EXCEPT
SELECT P.pub_name,ST.stor_id
FROM publishers AS P JOIN titles AS T ON P.pub_id=T.pub_id
					 JOIN sales AS S ON T.title_id=S.title_id
					 JOIN stores AS ST ON S.stor_id=ST.stor_id
GROUP BY P.pub_name,ST.stor_id