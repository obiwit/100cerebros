-- a) Tabela dos fornecedores que não têm encomendas:
SELECT * 
FROM stock_orders.fornecedor
EXCEPT
SELECT NIF,F.Nome,No_FAX,Endereco,Condicoes_pagamento,Tipo
FROM stock_orders.fornecedor as F JOIN stock_orders.encomenda as E ON F.NIF=E.Fornecedor;
