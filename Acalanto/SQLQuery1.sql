SELECT 
	*
FROM 
	produtos;
-------********************************-----------
SELECT 
	count(*) 
FROM 
	marcas;
-------********************************-----------
select 
	*
from 
	modelos;
-------********************************-----------
select 
	count(cod_produto)'produtos',
	count(codigo_barra)'codigo_de_barra',
	count(cod_produto) - count(codigo_barra)'quantidade_nulos'
from 
	produtos;
-------********************************-----------
select
	* 
from
	produtos
where 
	estoque <> 0;
-------********************************-----------
select 
	cod_marca, 
	count(cod_produto) 'cod_produto'
from 
	produtos 
group by 
	cod_marca;
-------********************************-----------
select 
	*
from 
	produtos 
left join
	marcas 
on 
	produtos.cod_marca = marcas.cod_marca;
-------********************************-----------
select 
	*
from 
	produtos 
left join 
	modelos 
on 
	produtos.cod_modelo = modelos.cod_modelo;
-------********************************-----------
select 
	*
from 
	produtos 
left join
	grupos
on
	produtos.cod_grupo = grupos.cod_grupo;
-------********************************-----------
select
    produtos.cod_grupo,
    grupos.nome,
    count(*) as 'quantidade',
    sum(estoque) as 'total_estoque'
from 
	produtos
left join 
	marcas
on
	produtos.cod_marca = marcas.cod_marca
left join
	modelos
on
	produtos.cod_modelo = modelos.cod_modelo
left join
	grupos
on
	produtos.cod_grupo = grupos.cod_grupo
where
    estoque <> 0
group by 
    produtos.cod_grupo,
    grupos.nome
order by
    quantidade DESC;