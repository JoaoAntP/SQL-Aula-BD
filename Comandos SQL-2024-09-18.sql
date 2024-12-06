create table cliente
(idcliente integer not null,
 nomecliente varchar(50) not null,
 primary key (idcliente)
)

create table mesa (
idmesa integer not null,
primary key (idmesa))

create table mesa 
(
idmesa integer not null primary key
)

create table itemconsumo
(iditem integer not null,
 nomeitem varchar(30) not null,
 precounit real not null,
 categoria char(6) not null,
 descricao varchar(140) null,
 primary key (iditem)
)

create table telcliente
(idcliente integer not null,
telefone varchar(11) not null,
 primary key (idcliente, telefone),
 foreign key (idcliente) references Cliente(idcliente)
 )
 
 create table nota
 (numeronota char(4) not null,
  datapagamento date not null,
  idpedido integer not null,
  primary key (numeronota)
 )
 
 
 create table pedido
 (idpedido integer not null,
  dtpedido date not null,
  situacao varchar(10) not null,
  motivocancel varchar(140) null,
  identicli integer not null,
  idmesa integer null,
  primary key (idpedido),
  foreign key (identicli) references Cliente(idcliente),
  foreign key (idmesa) references Mesa (idmesa) 
 )
 
 create table pedidoitem
 (idpedido integer not null,
  iditem integer not null,
  quantidade integer not null,
  primary key (idpedido, iditem),
  foreign key (idpedido) references Pedido (idpedido),
  foreign key (iditem) references Itemconsumo (iditem)
 )
  
 alter table nota add foreign key (idpedido) 
 references Pedido (idpedido)
 
 --comando para verificar o conteúdo de uma tabela
 select * from itemconsumo
 
 --Adicionar o atributo informação nutricional aos itens
 alter table itemconsumo add infonutri varchar(140) not null
 
 --Exclua o atributo de informação nutricional
 alter table itemconsumo drop infonutri
 
 








