-- Database: pratica
-- DROP DATABASE IF EXISTS pratica;
CREATE DATABASE pratica
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Portuguese_Brazil.1252'
    LC_CTYPE = 'Portuguese_Brazil.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
Create table Cliente(
nmr_cli int not null,
nome_cli varchar(255),
end_cli varchar(255),
saldo varchar(255),
cod_vend varchar(255),
Primary  key(nmr_cli)
);
insert into Cliente(nmr_cli, nome_cli, end_cli, saldo, cod_vend)
values(1, 'Luisa', 'Rua Maranhão Dias', 177.3,871)
insert into Cliente(nmr_cli, nome_cli, end_cli, saldo, cod_vend)
values(2, 'Cristina', 'Av Paula Nunes', 12332.01,872)
insert into Cliente(nmr_cli, nome_cli, end_cli, saldo, cod_vend)
values(3, 'Manoel', 'Av Dutra de Paula', 4332.01,973)
insert into Cliente(nmr_cli, nome_cli, end_cli, saldo, cod_vend)
values(4, 'Rodrigo', 'Rua Leão de Albuquerque', 32.39,82)
insert into Cliente(nmr_cli, nome_cli, end_cli, saldo, cod_vend)
values(5, 'Miguel', 'Rua Paulo Albuquerque', 32897.39,821)
 select*from Cliente