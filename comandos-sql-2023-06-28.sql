--DDL
create table telcliente
(idcliente integer not null,
 telefone char(13) not null,
 primary key (idcliente, telefone)
)

alter table telcliente rename idcliente to idcli

alter table telcliente add foreign key(idcli) references cliente (idcliente)


--MUITO ERRADO. Cada tabela deve ter apenas uma chave primária.
create table telcliente
(idcliente integer not null primary key,
 telefone char(13) not null primary key
)

create table pedidoitem
(idpedido integer not null,
 iditem integer not null,
 quantidade integer not null,
 primary key (idpedido, iditem),
 foreign key (idpedido) references Pedido (idpedido),
 foreign key (iditem) references Itemconsumo(iditem)
)

select * from pedidoitem

--DML
--Comando longo do insert
insert into itemconsumo (iditem, nomeitem, precounit, categoria, descricao) 
values (1, 'coca-cola', 5.99, 'bebida', 'lata 350ml')

select * from itemconsumo

--Comando curto do insert
insert into itemconsumo values (2, 'coca-cola', 12.00, 'bebida', 'garrafa 2l')
insert into itemconsumo values (3, 'mate', 4.00, 'bebida', null)

insert into itemconsumo values (4, 'hamburguer', 11.00, 'comida', 'pão, carne e queijo');
insert into itemconsumo values (5, 'batata-frita', 8.00, 'comida', null);
insert into itemconsumo values (6, 'pizza', 48.70, 'comida', 'pizza família');
insert into itemconsumo values (7, 'guaraná', 5.99, 'bebida', 'lata 350ml')

--Atualizar o preço todos os itens em 20%
update itemconsumo set precounit = precounit * 1.2

--Atualizar o preço das bebidas em 20%
update itemconsumo set precounit = precounit *1.2 where categoria='bebida'

--Atualizar o preço da pizza familia para 48,70.
update itemconsumo set precounit=48.70 where iditem = 6

--Atualize o preço da coca-cola e do guaraná lata 350ml para 5.99
update itemconsumo set precounit=5.99 where iditem = 7 or iditem=1 

