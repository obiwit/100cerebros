-- c) Número médio de produtos por encomenda (nota: não interessa o número de unidades):
SELECT avg(Cast(R.num_occurences as float)) as avg_num_prod
FROM (
	SELECT count(I.Codigo_produto) as num_occurences
	FROM stock_orders.contem as I
	GROUP BY I.No_encomenda
) as R
