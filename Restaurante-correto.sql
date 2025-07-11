CREATE TABLE Mesa (
idMesa integer PRIMARY KEY
);

CREATE TABLE Cliente (
idCliente integer PRIMARY KEY,
nome varchar(20) not null
);

CREATE TABLE Telefone (
idCliente integer,
telefone varchar(20),
PRIMARY KEY (idCliente, telefone),
FOREIGN KEY(idCliente) references Cliente(idCliente)
);

CREATE TABLE ItemConsumo (
idItem integer PRIMARY KEY,
nome varchar(20) not null,
categoria char(6) not null,
precoUnit real not null,
descricao varchar(20)
);

CREATE TABLE Pedido (
idPedido integer PRIMARY KEY,
dtPedido date not null,
situacao varchar(20) not null,
motivoCancel varchar(100),
idCliente integer,
idMesa integer
);

CREATE TABLE PedidoItem (
idItem integer,
idPedido integer,
quantidade varchar(20) not null,
PRIMARY KEY (idItem, idPedido),
FOREIGN KEY(idItem) REFERENCES ItemConsumo (idItem),
FOREIGN KEY(idPedido) REFERENCES Pedido (idPedido)
);

CREATE TABLE Nota (
numeroNota integer PRIMARY KEY,
dtPagamento date not null,
idPedido integer
);

ALTER TABLE Nota ADD FOREIGN KEY(idPedido) REFERENCES Pedido (idPedido);
ALTER TABLE Pedido ADD FOREIGN KEY(idCliente) REFERENCES Cliente (idCliente);
ALTER TABLE Pedido ADD FOREIGN KEY(idMesa) REFERENCES Mesa (idMesa);