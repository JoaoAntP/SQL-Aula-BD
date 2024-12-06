--Liste os clientes com seus telefones
select nomecliente, telefone 
from cliente, telcliente 
where cliente.idcliente = telcliente.idcliente

--usando renomeação para as tabelas
select nomecliente, telefone 
from cliente c, telcliente t
where c.idcliente = t.idcliente

--Listes os clientes com seus telefones de maneira ordenada
select nomecliente as nome_cliente, telefone as telefone_do_cliente 
from cliente c, telcliente t
where c.idcliente = t.idcliente
order by nomecliente