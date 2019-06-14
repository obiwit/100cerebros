-- s)
SELECT T.title
FROM titles as T JOIN sales as S ON T.title_id=S.title_id JOIN stores as ST ON ST.stor_id=S.stor_id
WHERE ST.stor_name != 'Bookbeat';