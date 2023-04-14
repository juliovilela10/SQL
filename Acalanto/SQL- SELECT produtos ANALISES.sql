-- Qual produto é mais barato
select TOP 1 * from produtos order by preco_venda ASC;

-- Quais são os 5 produtos mais caros
select TOP 5 * from produtos order by preco_venda desc;

-- Quais produtos tem maior lucro
select TOP 10 *, (preco_venda - preco_compra) as lucro from produtos order by lucro desc;

-- Qual o lucro médio por marca?
select avg(preco_venda - preco_compra) as lucro from produtos group by cod_marca;

-- Qual o lucro médio da Liz (cod = 1)?
select avg(preco_venda - preco_compra) as lucro from produtos where cod_marca = 1 group by cod_marca;

-- Qual o lucro médio da Liz (nome="Liz")?
select
   avg(preco_venda - preco_compra) as lucro
from
   produtos
LEFT JOIN
   marcas ON marcas.cod_marca = produtos.cod_marca
where
   marcas.nome = 'Liz'
group by
   produtos.cod_marca;

-- Qual a margem de lucro da Liz?
select avg( (preco_venda - preco_compra) / preco_compra) as margem from produtos where cod_marca = 1 group by cod_marca;