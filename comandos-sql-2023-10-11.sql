select * from itemconsumo
insert into itemconsumo values (1, 'coca-cola', 'bebida', 4.50, 'zero');
insert into itemconsumo values (2, 'mate', 'bebida', 7.00, null);
insert into itemconsumo values (3, 'batata-frita', 'comida', 5.00, null);
insert into itemconsumo values (4, 'coca-cola', 'bebida', 4.50, 'normal');
insert into itemconsumo values (5, 'hamburguer', 'comida', 12.00, 'pão, carne, queijo');

select * from cliente 

insert into cliente values (30, 'Miguel');
insert into cliente values (31, 'Daniel');
insert into cliente values (32, 'Agatha');
insert into cliente values (33, 'Larissa');

select * from telefone
insert into telefone values (30, '99988-7766');
insert into telefone values (30, '2455-6677');
insert into telefone values (32, '98765-4433');
insert into telefone values (33, '3454-6655')

select * from mesa
insert into mesa values (110);
insert into mesa values (120);
insert into mesa values (130);
insert into mesa values (140);

select * from pedido
insert into pedido values (80, '11/09/2023', 'fechado', null, 31, 110);
insert into pedido values (81, '12/09/2023', 'cancelado', 'preço alto', 32, 120);
insert into pedido values (82, '30/09/2023', 'fechado', null, 32, 110);
insert into pedido values (83, '11/10/2023', 'aberto', null, 30, 130);
insert into pedido values (84, '11/10/2023', 'cancelado', 'produto estragado', 31, 120);


