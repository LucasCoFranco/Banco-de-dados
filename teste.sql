create table produto
 (
    codprod integer not null primary key, #valor não nulo e de chave primaria
    dsprod varchar(100), #
    saldo integer,
    sldmin integer,
    prvenda numeric(10,2),
    prcusto numeric(10,2), 
 );
