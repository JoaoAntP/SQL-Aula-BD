select *
from itemconsumo

-- Liste todos os produtos que sejam comida
select nomeitem
from itemconsumo
where categoria = 'comida'

-- Liste todos os produtos que sejam comida e custem mais de R$10,00
select nomeitem, precounit
from itemconsumo
where categoria = 'comida' and precounit>10

--Liste os itens e os preços dos produtos que sejam sobremesa
select nomeitem, precounit
from itemconsumo
where categoria = 'sobremesa'

-- Consulta para testar união, interseção e diferença
--união
select nomeitem
from itemconsumo
where categoria = 'comida'
union 
select nomeitem
from itemconsumo
where categoria ='bebida'

--união aparecendo os elementos repetidos
select nomeitem
from itemconsumo
where categoria = 'comida'
union all
select nomeitem
from itemconsumo
where categoria ='bebida'

--interseção
select nomeitem
from itemconsumo
where categoria = 'comida'
intersect
select nomeitem
from itemconsumo
where categoria ='bebida'

--diferença
--união aparecendo os elementos repetidos
select nomeitem
from itemconsumo
where categoria = 'comida'
except
select nomeitem
from itemconsumo
where categoria ='bebida'

--Liste todos os itens do restaurante
select nomeitem
from itemconsumo

select distinct nomeitem
from itemconsumo

select nomeitem, descricao
from itemconsumo

select distinct nomeitem, descricao
from itemconsumo

-- 
select nomeitem, precounit
from itemconsumo
where precounit>=10

select nomeitem, precounit
from itemconsumo
where precounit<>10

select nomeitem, precounit
from itemconsumo
where precounit!=10

--Ordenar 
--Liste os itens do restaurante de maneira ordenada
select nomeitem
from itemconsumo
order by nomeitem

select nomeitem, precounit
from itemconsumo
order by nomeitem

select nomeitem, precounit
from itemconsumo
order by nomeitem desc

--Apresente os itens do mais caro para o mais barato

select nomeitem, precounit
from itemconsumo
order by precounit desc

select nomeitem, categoria, precounit
from itemconsumo
order by categoria desc, nomeitem

--
select * from cliente

insert into cliente values (11, 'Luisa');
insert into cliente values (12, 'Ramalho');
insert into cliente values (13, 'Lucas de Carvalho');
insert into cliente values (14, 'Thiago');

select * from telcliente

insert into telcliente values (11, '99786-4343');
insert into telcliente values (11, '2356-7788');
insert into telcliente values (12, '98876-5556');
insert into telcliente values (13, '4002-0986');



