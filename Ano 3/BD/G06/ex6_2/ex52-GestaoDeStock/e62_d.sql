-- d) Lista de produtos (e quantidades) fornecidas por cada fornecedor: 
SELECT E.Fornecedor,I.Codigo_produto, sum(I.No_itens_encomendados) as quantity
FROM stock_orders.contem as I JOIN stock_orders.encomenda as E ON I.No_encomenda=E.No_encomenda
GROUP BY E.Fornecedor,I.Codigo_produto
ORDER BY E.Fornecedor