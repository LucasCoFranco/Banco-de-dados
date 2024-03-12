Select * from Produto;
Mostrar todas as linhas de todas as colunas da tabela Produto

Select codprod, dsprod from Produto;
Mostrar as colunas codprod e dsprod da tabela Produto

Select * from Produto where codprod=495;
Mostrar uma linha especifica da tabela Produto

Select dsprod, dsmedida, prvenda from Produto
inner join UnidadeMedida ON
UnidadeMedida.UN=produto.UN;
Mostrar dados de duas tabelas com equivalencia de dados (un=un)(kg=kg)

Select 
         produto.dsprod,
         UnidadeMedida.dsmedida,
         produto.prvenda
from Produto 
left Join UnidadeMedida on Unidademedida.un = produto.un; 
Mostrar dados de duas tabelas que incluem dados nulos
(left é porque ele faz referencia ao dados a esquerda, porém ao contrario, ou seja a direita)

Select 
         produto.dsprod,
         UnidadeMedida.dsmedida,
         produto.prvenda
from Produto 
left Join UnidadeMedida on Unidademedida.un = produto.un 
where dsmedida is null;
Mostrar dados de dsmedida nulos

delete from UnidadeMedida where un = 'UN';
select * from produto where un = 'UN';
deletar de UnidadeMedida os dados que possuem un


update UnidadeMedida set un = 'K' where un = 'KG';
select * from produto where un = 'KG';
atualizar dados 