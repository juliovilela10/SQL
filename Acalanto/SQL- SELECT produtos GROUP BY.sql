SELECT
	cod_grupo,
	count(cod_produto) AS 'qtd',
	sum(estoque) AS 'estoque',
	min(preco_venda) AS 'menor preco',
	max(preco_venda) AS 'maior preco',
	avg(preco_venda) AS 'media preco',
	sum((preco_venda - preco_compra) * estoque) as 'Soma Lucro Total'
FROM
	produtos
WHERE
	estoque <> 0
GROUP BY
	cod_grupo;
-----*****************************--------
SELECT
	produtos.cod_grupo,
	grupos.nome,
	count(cod_produto) AS 'qtd',
	sum(estoque) AS 'estoque',
	min(preco_venda) AS 'menor preco',
	max(preco_venda) AS 'maior preco',
	avg(preco_venda) AS 'media preco',
	sum((preco_venda - preco_compra) * estoque) as 'Soma Lucro Total'
FROM
	produtos
JOIN
	grupos ON grupos.cod_grupo = produtos.cod_grupo
WHERE
	cod_modelo = 14 OR
	cod_modelo = 12
GROUP BY
	produtos.cod_grupo,
	grupos.nome;