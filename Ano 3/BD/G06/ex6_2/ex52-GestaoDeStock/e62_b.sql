-- b) Número médio de unidades encomendadas para cada produto:

SELECT I.Codigo_produto,avg(I.No_itens_encomendados) as avg_unidades
FROM stock_orders.contem as I
GROUP BY I.Codigo_produto;

SELECT * FROM stock_orders.contem as I;