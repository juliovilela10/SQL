-- Relacione a tabela FATO com as Dimensões e limpe os estoque ausentes
select
	cod_produto,
   produtos.nome as produto,
   fornecedores.nome as fornecedor,
   grupos.nome as grupo,
   marcas.nome as marca,
   modelos.nome as modelo,
   cores.nome as cor,
   estoque,
   preco_compra,
   preco_venda,
   (preco_venda - preco_compra) as lucro,
   ((preco_venda - preco_compra) / preco_venda) as margem,
   codigo_barra,
   referencia
FROM
   produtos
LEFT JOIN
	fornecedores ON fornecedores.cod_fornecedor = produtos.cod_fornecedor
LEFT JOIN
	grupos ON grupos.cod_grupo = produtos.cod_grupo
LEFT JOIN
	marcas ON marcas.cod_marca = produtos.cod_marca
LEFT JOIN
	modelos ON modelos.cod_modelo = produtos.cod_modelo
LEFT JOIN
	cores ON cores.cod_cor = produtos.cod_cor
WHERE
	estoque <> 0;
