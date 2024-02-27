Para começar, primeiro apertar em novo banco de dados e selecionar a pasta que deseja salvar o banco de dados

Tabela é uma forma de agrupar dados

Tabela em um bd relacional possui linhas e colunas, cada coluna corresponde ao um dado

O limite de número de colunas é de aproximadamente de 65000 e o de linhas é um valor muito alto (improvavel de alcançar)

chave primaria é uma chave

Na aba Executar SQL, vamos começar a programar

create table produto
 (
    codprod integer not null primary key, --valor não nulo e de chave primaria --not null: obrigatório ter algo, se não o banco não aceita
    dsprod varchar(100), #
    saldo integer,
    sldmin integer,
    prvenda numeric(10,2),
    prcusto numeric(10,2), 
 );

 e apertar no simbolo de play para executar o SQL

agora salvar o script no terceiro icone e salvar como script01

 agora para adicionar os dados, vamos criar uma nova aba, clicando no primeiro icone
 
 insert into produto(codprod, dsprod, saldo, sldmin, prvenda, prcusto)
 values (101, 'Sabão em Pedra', 1470, 200, 1.87, 0.95);
 
 outra maneira de colocar dados no banco é
 insert into produto values
 (102, 'Papel Toalha', 109, 300, 5.75, 3.10); --dessa maneira, o banco de dados armazena os dados na sequencia, primeiro valor vai para a primeira coluna

 outra maneira mais rapida para adicionar varios dados

 insert into produto values
 (203, 'Frigideira', 0, 20, 18.50, 5),
 (478, 'Guardanapo, 470, 100, 1.80, 0.20'),
 (495, 'Alvejante Ipê', 3200, 3000, 2.76, 1.20);

Comando para listar as informações
select * from produto; --o asterisco é um coringa que vai mostrar todos os dados da tabela

porém isso faz com que a maquina use muito processamento na hora de mostrar, então o recomendado é pedir somente o que é necessário
select dsprod, dsprod from produto;

--modificação de estrutura da tabela: alter table
--remove uma tabela com todas as suas tuplas: drop table

Para adicionar um apelido para facilitar para o usuário
select dsprod as produto, prvenda as preço from produto

Para ordenar por alguma ordem desejada ,basta usar o order by
select dsprod as produto, prvenda as preço from produto
order by dsprod, prvenda;

se quiser decrescente
select dsprod as produto, prvenda as preço from produto
order by dsprod desc

////////////////////////////////////////////////////////////////////////////
Criando nova tabela
create table usuario
(
	user char(8) not NULL PRIMARY KEY,
	password char (20)
);
INSERT INTO usuario VALUES ('admin', 'admin'), ('afsilva','12345678'), ('gerente', 'gera');

Para ver quantas linhas tem o banco de dados
SELECT count (*) FROM usuario

e para ver se tem algo na tabela em especifico
SELECT count (*) FROM usuario
where user = 'afsilva'
	and password = '12345678';
   --se o contador der 1, é porque tem uma linha com essa informações

SQL INJECTION
SELECT count (*) from usuario WHERE user = 'sapato' or 1=1 --and password = 'abc123';
--Como o hacker coloca o --na senha, o banco vai entender como um comentario, então ele vai validar o acesso pois 1=1 é correto