select * from itemconsumo
select * from mesa
select * from cliente
select * from telefone
select * from pedido

insert into itemconsumo values (6, 'suco de laranja', 'bebid', 9.00, null)
update itemconsumo set categoria='bebida'where iditem=6

delete from itemconsumo where iditem=2


---CONSULTAS--
--Liste os itens do restaurante e seus preços
select nome, precounit
from itemconsumo

--Liste os itens distintos do restaurante e seus preços
select distinct nome, precounit
from itemconsumo

--Liste os itens do restaurante que sejam comida
select nome
from itemconsumo
where categoria = 'comida'

--Liste os itens do restaurante que sejam comida e custem mais de 10,00.
select nome
from itemconsumo
where categoria = 'comida' and precounit>10

select nome
from itemconsumo
where categoria <> 'comida' and precounit>=10


--Apresente os clientes e seus telefones
select nome, telefone
from cliente, telefone
where cliente.idcliente=telefone.idcliente

-- Apresente os numeros de telefone do cliente Miguel
select nome, telefone
from cliente, telefone
where cliente.idcliente=telefone.idcliente and nome='Miguel'


-- Apresente os numeros de telefone do cliente Miguel
--usando renomeação das tabelas
select nome, telefone
from cliente c, telefone t
where c.idcliente=t.idcliente and c.nome='Miguel'

--Apresente os numeros de telefone do cliente Miguel
--usando reonomeação
--usando junção interna (join)
select nome, telefone
from cliente c join telefone t on c.idcliente=t.idcliente
where nome='Miguel'

--Apresente os clientes que fizeram pedido
select nome, idpedido
from cliente join pedido on cliente.idcliente=pedido.idcliente

-- Apresente os clientes que cancelaram pedidos
--usando renomeação
select nome
from cliente c join pedido p on c.idcliente=p.idcliente
where situacao='cancelado'

-- Apresente os clientes que cancelaram pedidos e qual foi o motivo
--usando renomeação
select nome, motivocancel
from cliente c join pedido p on c.idcliente=p.idcliente
where situacao='cancelado'

--Apresente os clientes que cancelaram pedido e seus telefones
--usando produto cartesiado
select nome, telefone, idpedido
from cliente c, telefone t, pedido p
where c.idcliente = t.idcliente
and c.idcliente=p.idcliente
and situacao='cancelado'

--Apresente os clientes que cancelaram pedido e seus telefones
--usando junção
select nome, telefone, idpedido
from cliente c join telefone t on c.idcliente=t.idcliente 
join pedido p on c.idcliente=p.idcliente
where situacao='cancelado'


--Apresente os clientes que cancelaram pedido e seus telefones
--usando junção externa
select nome, telefone, idpedido
from cliente c left join telefone t on c.idcliente=t.idcliente 
join pedido p on c.idcliente=p.idcliente
where situacao='cancelado'
--a consulta acima usou junção externa à esquerda
--junção externa a esquerda: left join
--junção externa a direita: right join
--junção externa integral: full join


--Apresente os itens do restaurante de forma ordenada e seus preços
select nome, precounit
from itemconsumo
order by nome

--Apresente os itens do restaurante e seus preços ordenados do maior pro menor
select nome, precounit
from itemconsumo
order by precounit desc

--Apresente os itens do restaurante que sejam comida
--e seus preços ordenados do maior pro menor
select nome, precounit
from itemconsumo
where categoria='comida'
order by precounit desc

--Apresente o maior preco de item
select max(precounit)
from itemconsumo

--Apresente o maior e menor preco de item e a média
select max(precounit), min(precounit), avg(precounit)
from itemconsumo

--Apresente o item e o seu preco unitário 
--com uma prospeção de aumento de 10%
--usando renomeação de atributo
select nome, precounit*1.1 as prospecção_de_preco
from itemconsumo

--Quantos itens tem no restaurante?
select count(iditem)
from itemconsumo

select nome
from itemconsumo

select count(nome)
from itemconsumo

select distinct nome
from itemconsumo

select count(distinct nome)
from itemconsumo

--Apresente o menor preco por categoria
select categoria, min(precounit)
from itemconsumo
group by categoria

--ordem dos comandos
select
from
where
group by
order by


































