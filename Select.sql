Select * from Produto;
Mostrar todas as linhas de todas as colunas da tabela Produto

Select codprod, dsprod from Produto;
Mostrar as colunas codprod e dsprod da tabela Produto

Select * from Produto where codprod=495;
Mostrar uma linha especifica da tabela Produto

Select dsprod, dsmedida, prvenda from Produto
inner join UnidadeMedida ON
UnidadeMedida.UN=produto.UN;
Mostrar dados de duas tabelas