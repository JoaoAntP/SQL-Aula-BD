create table itemconsumo
(iditem integer not null,
 nomeitem varchar(30) not null,
 precounit real not null,
 categoria char(6) not null,
 descricao varchar(200) null)
 
 select * from itemconsumo
 
 drop table itemconsumo
 
 alter table itemconsumo ADD infonutri varchar(200) null
 
 alter table itemconsumo drop infonutri
 
 create table cliente
 (idcliente integer not null,
  nomecliente varchar(30) not null,
  primary key (idcliente)
 )
 
 create table mesa
 (idmesa integer primary key not null)
 
  alter table itemconsumo ADD primary  key (iditem) 
 
 create table pedido
 (idpedido integer primary key not null,
  datapedido date not null,
  situacao varchar(10) not null,
  motivocancel varchar(100) null,
  idcliente integer not null,
  idmesa integer not null,
  foreign key (idcliente) references cliente (idcliente),
  foreign key (idmesa) references mesa (idmesa)
 )
 
 
 create table nota
 (numeronota integer primary key not null,
  datapagamento date not null,
  idpedido integer not null,
  foreign key (idpedido) references Pedido(idpedido)  
 )
 
 
 
 
 
 
 
 
 
 