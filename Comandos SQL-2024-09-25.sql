select * from itemconsumo
--DML
--Inserção de dados
--comando completo para o insert
insert into itemconsumo (iditem, nomeitem, precounit, categoria, descricao) 
values (1, 'coca-cola', 9.50, 'bebida', 'lata de 350ml normal');
--comando curto para o insert
insert into itemconsumo values (2, 'pizza', 25.00, 'comida', 'pizza brotinho 25cm');
insert into itemconsumo values (3, 'coca-cola', 9.50, 'bebida', 'lata de 350ml zero');
insert into itemconsumo values (4, 'batata-frita', 10.00, 'comida', null);
insert into itemconsumo values (5, 'mate', 6.00, 'bebida', null);
insert into itemconsumo values (6, 'x-tudo', 12.00, 'comida', null);

---
--Exclua a batata-frita
delete from itemconsumo where iditem=4

--Exclua todos os itens que sejam bebida
delete from itemconsumo where categoria = 'bebida'

--Exclua os itens que custam acima de 20 reais
delete from itemconsumo where precounit >20

precounit >= 20
precounit <=20
precounit <> 20

--Excluir todos os itens do restaurante
delete from itemconsumo

--
--Atualize o preço da pizza para 27,00
update itemconsumo set precounit = 27.00 where iditem=2

-- Atualize os preços das bebidas em 10%
update itemconsumo set precounit = precounit*1.1 where categoria = 'bebida'

update itemconsumo set precounit = precounit*1.1 
where categoria = 'bebida' or categoria = 'Bebida' or categoria = 'BEBIDA'

--Atualize em 10% os preços das bebidas que custam menos de 10 reais.
update itemconsumo set precounit = precounit*1.1 where categoria = 'bebida' and precounit<10


