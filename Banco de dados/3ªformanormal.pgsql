##Dev:Félix Francisco
create table fornecedor(
cd int primary key,
local_fornecedor varchar(30),
telefone_fornecedor varchar(30)

);
insert into fornecedor
(cd,local_fornecedor,telefone_fornecedor)
values
(121,'São Paulo','82365-6532'),
(122,'Manaus','54465-8632');

select * from fornecedor;
create table loja(
cod_peca int primary key,
qtd_estoque int,
qtd_caixas int ,
foreign key (cod_fornecedor) references fornecedor (cd),
cod_fornecedor int);
insert into loja
(cod_peca,qtd_estoque,qtd_caixas,cod_fornecedor)
values
(0009,512,52,121),
(0023,263,27,122),
(0065,196,20,121);
select * from loja;
 
 select * from loja inner join fornecedor on loja.cod_fornecedor = fornecedor.cd;
