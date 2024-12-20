--Apresente os clientes que cancelaram pedido
select nomecliente, idpedido, motivocancel
from cliente, pedido 
where idcliente = identicli
and situacao = 'cancelado'

--Apresente quantos clientes cancelaram pedido
select count(*)
from cliente, pedido
where idcliente = identicli
and situacao = 'cancelado'

select * from itemconsumo

--Apresente quais os itens não possuem descrição
select nomeitem, descricao
from itemconsumo
where descricao is null

--Apresente quais os itens que possuem descrição
select nomeitem, descricao
from itemconsumo
where descricao is not null

--Apresente todos itens que tenham a informação de ser zero
select nomeitem, descricao
from itemconsumo
where descricao like '%zero%'

--Apresente todos os itens que terminem com a letra a
select nomeitem
from itemconsumo
where nomeitem like '%a'

--Apresente todos os itens que tenha a na segunda letra 
select nomeitem
from itemconsumo
where nomeitem like '_a%'

--Concatenação
select nomeitem||' '||descricao as Colunas_Concatenadas
from itemconsumo
where descricao is not null

-- Apresente como ficariam os precos dos produtos se tivesse aumento de 10%
select nomeitem, precounit *1.1 as preco_10_por_cento
from itemconsumo

--Apresente qual o item que tem o menor precos
select nomeitem
from itemconsumo
where precounit = (select min(precounit) from itemconsumo)

-----
select nomeitem
from itemconsumo
where precounit in (select precounit 
				   from itemconsumo
				   where categoria = 'comida')
				   
-----
select nomeitem
from itemconsumo
where precounit not in (select precounit 
				        from itemconsumo
				        where categoria = 'comida')				  







