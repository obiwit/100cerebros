-- l)
SELECT titles.type,avg(titles.price) as avg_price,sum(sales.qty) as num_sales
FROM (titles JOIN sales ON titles.title_id=sales.title_id)
GROUP BY titles.[type],titles.pub_id;