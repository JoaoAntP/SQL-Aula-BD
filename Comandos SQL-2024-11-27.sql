select * from pedido
select * from cliente
select * from mesa

insert into mesa values (100);
insert into mesa values (200);
insert into mesa values (300);
insert into mesa values (400);
insert into mesa values (500)

insert into pedido values (20, '03/11/2024', 'fechado', null, 11, 200);
insert into pedido values (21, '03/11/2024', 'cancelado', 'desistiu', 12, 500);
insert into pedido values (22, '12/11/2024', 'fechado', null, 13, 500);
insert into pedido values (23, '26/11/2024', 'fechado', null, 12, 200);
insert into pedido values (24, '27/11/2024', 'aberto', null, 14, 300)

--Liste os clientes e seus telefones
select nomecliente, telefone
from cliente, telcliente
where cliente.idcliente =telcliente.idcliente

--Liste os clientes que fizeram pedido
select nomecliente, idpedido
from cliente, pedido
where idcliente =identicli

--Liste os clientes que fizeram pedido e seus telefones
select nomecliente, telefone, idpedido
from cliente, telcliente, pedido
where telcliente.idcliente = cliente.idcliente
and cliente.idcliente = pedido.identicli

--Liste os clientes que fizeram pedido e seus telefones de modo ordenado
select nomecliente, telefone, idpedido
from cliente c, telcliente t, pedido p
where c.idcliente = t.idcliente
and c.idcliente = p.identicli
order by nomecliente

--Liste os clientes e seus telefones
select nomecliente, telefone
from cliente join telcliente on cliente.idcliente = telcliente.idcliente

--
select nomecliente, telefone
from cliente natural join telcliente

--Liste os clientes que fizeram pedido e seus telefones
select nomecliente, telefone, idpedido
from cliente c join telcliente t on c.idcliente = t.idcliente join pedido p
on p.identicli = c.idcliente

select nomecliente, telefone, idpedido
from cliente c natural join telcliente t join pedido p on c.idcliente = p.identicli

--Liste todos os clientes e seus telefones daqueles que possuem
select nomecliente, telefone
from cliente left natural join telcliente on cliente.idcliente= telcliente.idcliente

select nomecliente, telefone
from cliente natural left join telcliente 

right join
full join




