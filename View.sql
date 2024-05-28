CREATE VIEW lista
as SELECT p.IDCliente as "numero do pedido", c.Nome as "Nome do cliente", j.Nome as "Jogo", p.Data_Pedido as "Data do pedido", s.Status FROM Pedidos p
INNER join Clientes c on p.IDCliente = c.IDCliente
INNER JOIN Detalhes_Pedido dp on dp.IDPedido=p.IDPedido
INNER JOIN Jogos j on j.IDJogo=dp.IDJogo
INNER JOIN Status s on s.IDStatus=p.IDStatus;