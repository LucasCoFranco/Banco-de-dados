create table produto
 (
    codprod integer not null primary key, #valor não nulo e de chave primaria
    dsprod varchar(100), #
    saldo integer,
    sldmin integer,
    prvenda numeric(10,2),
    prcusto numeric(10,2), 
 );
 insert into produto(codprod, dsprod, saldo, sldmin, prvenda, prcusto)
 values (101, 'Sabão em Pedra', 1470, 200, 1.87, 0.95);
