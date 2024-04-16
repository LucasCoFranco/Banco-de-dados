-- Apaga as tabelas produto e UnidadeMedida
drop table if exists usuario;
drop table if exists produto;     
drop table if exists UnidadeMedida;
drop table if exists Cargo;
-- Criar tabela UnidadeMedida				
CREATE TABLE UnidadeMedida 
(
     un char(6) not null primary key,
     dsmedida varchar(30)
);
-- Popular tabela UnidadeMedida
insert into UnidadeMedida values  
	('BDJ',	'BANDEJA'), 
	('BNGA',	'BISNAGA'),
	('BO',	'BOMBONA'),
	('CAPS',	'CÁPSULA'),
	('CART',	'CARTELA'),
	('CJ',	'CONJUNTO'),
	('LT', 'litro'),
	('CX',	'CAIXA'),
	('CX2',	'CAIXA COM 2 UNIDADES'),
	('CX3',	'CAIXA COM 3 UNIDADES'),
	('CX5',	'CAIXA COM 5 UNIDADES'),
	('CX10',	'CAIXA COM 10 UNIDADES'),
	('CX15',	'CAIXA COM 15 UNIDADES'),
	('CX20',	'CAIXA COM 20 UNIDADES'),
	('CX25',	'CAIXA COM 25 UNIDADES'),
	('CX50',	'CAIXA COM 50 UNIDADES'),
	('CX100',	'CAIXA COM 100 UNIDADES'),
	('DISP',	'DISPLAY'),
	('EMBAL',	'EMBALAGEM'),
	('GLO',	'GALÃO'),
	('GF',	'GARRAFA'),
	('KG',	'QUILOGRAMA'),
	('UN',	'unidade'),
	('PC',	'PEÇA'),
	('VASIL',	'VASILHAME'),
	('BALDE',	'BALDE'),
	('KIT',	'KIT'),
	('LATA',	'LATA'),
	('POTE',	'POTE'),
	('SACO',	'SACO');

-- Criar tabela produto
create table produto
(   
    codprod integer not null primary key,
    dsprod varchar(50) not null,
    un char(4) ,
    prvenda numeric(10,2),
    prcusto numeric(10,2),
    foreign key (un) references UnidadeMedida(un)
);
-- Popular tabela produto
insert into produto values
	(101,'Coxão Mole','KG',28.00,15.00),
	(102,'Patinho', 'KG',35.00,14.00),
	(203,'Carvão Icaro  20 kg','UN',42.00,32.00),
	(478,'Sal grosso cisne 500g','UN',1.80,0.90),
	(495,'Carne moida de 1ª','KG',35.00,15.00),
	(610,'Lagarto','KG',32.00,10.00),
	(980,'Cupim',null,null,null),
	(444,'Cutelo',null,null,null),
	(361,'Acem',null,null,null); 

-- Criar tabela usuario				
CREATE TABLE Cargo
(
     idcargo integer not null primary key,
     dscargo varchar(25) not null
);
-- Popular tabela cargo
insert into cargo values  (1,	'Administrador'), (2, 'Supervisor'), (3, 'Operador de caixa'); 

-- Criar tabela usuario				
CREATE TABLE Usuario
(
         cpf integer not null primary key,
	 nome varchar(50) not null,
	 idcargo integer,
	 senha varchar(64) not null
);
-- Popular tabela usuario
insert into Usuario values  ('11122233344',	'Suporte', 1, 'Admin'); 
insert into Usuario values  ('44433322211',	'Marcia Alencar', 2, 'Super'); 
insert into Usuario values  ('22334455667',	'Carlos Almeida', 3, 'Caixa'); 

