INSERT INTO Clientes (Nome, Email, Endereço) 
VALUES 
('João Silva', 'joao@email.com', 'Rua das Flores, 123'),
('Maria Santos', 'maria@email.com', 'Avenida Principal, 456'),
('José Oliveira', 'jose@email.com', 'Praça Central, 789'),
('Ana Pereira', 'ana@email.com', 'Alameda das Árvores, 321'),
('Pedro Fernandes', 'pedro@email.com', 'Avenida das Montanhas, 654'),
('Carla Rodrigues', 'carla@email.com', 'Rua do Comércio, 987'),
('Márcio Almeida', 'marcio@email.com', 'Avenida dos Lagos, 741'),
('Fernanda Costa', 'fernanda@email.com', 'Praça da Liberdade, 852'),
('Rafaela Lima', 'rafaela@email.com', 'Rua dos Coqueiros, 159'),
('Gustavo Santos', 'gustavo@email.com', 'Avenida das Flores, 753');

INSERT INTO Status (Status)
VALUES
('Em processamento'),
('Aguardando pagamento'),
('Em trânsito'),
('Entregue'),
('Aguardando retirada'),
('Cancelado');

-- Inserção de 10 pedidos com datas diferentes
INSERT INTO Pedidos (IDCliente, Data_Pedido, IDStatus)
VALUES 
(1, '2024-04-01', 1),
(2, '2024-04-02', 2),
(3, '2024-04-03', 3),
(4, '2024-04-04', 4),
(5, '2024-04-05', 5),
(6, '2024-04-06', 6),
(7, '2024-04-07', 1),
(8, '2024-04-08', 3),
(9, '2024-04-09', 4),
(10, '2024-04-10', 1);

-- idjogo, nome, genero, preço, quantidade disponivel, idtipmidia;
INSERT INTO Jogos (IDJogo, Nome, Genero, Preco, Quantidade_Disponivel, IDTipoMidia)
VALUES
(1, 'God of War Ragnarok', 'ação-aventura', 299.90, 600, 1),
(2, 'God of War Ragnarok', 'ação-aventura', 199.90, 100, 2),
(3, 'Grand Theft Auto: San Andreas', 'ação-aventura', 65.00, 30, 2),
(4, 'Red Dead Redemption', 'ação-aventura', 89.00, 50, 1),
(5, 'Red Dead Redemption', 'ação-aventura', 99.00, 50, 2),
(6, 'Red Dead Redemption 2', 'ação-aventura', 349.00, 200, 1),
(7, 'Red Dead Redemption 2', 'ação-aventura', 299.00, 400, 2),
(8, 'Horizon Forbidden West', 'ação-aventura', 99.00, 250, 1),
(9, 'Horizon Forbidden West', 'ação-aventura', 149.00, 450, 2),
(10, 'Grand Theft Auto V', 'ação-aventura', 99.00, 500, 1),
(11, 'Grand Theft Auto V', 'ação-aventura', 149.00, 700, 2),
(12, 'Naruto X Boruto: Ultamate Ninja Storm Connections', 'luta', 265.58, 520, 1),
(13, 'Naruto X Boruto: Ultamate Ninja Storm Connections', 'luta', 299.00, 720, 2),
(14, 'Hogwarts Legacy', 'RPG', 249.00, 450, 1),
(15, 'Hogwarts Legacy', 'RPG', 229.00, 316, 2),
(16, 'Mortal Kombat 1', 'luta', 249.00, 354, 1),
(17, 'Mortal Kombat 1', 'luta', 209.00, 123, 2),
(18, 'Street Fighter 6', 'luta', 249.00, 153, 1),
(19, 'Street Fighter 6', 'luta', 249.00, 183, 2),
(20, 'Gran Turismo 7', 'corrida', 259.00, 83, 1),
(21, 'Gran Turismo 7', 'corrida', 249.00, 183, 2),
(22, 'Ghost of Tsushima', 'ação-aventura', 199.00, 327, 1),
(23, 'Ghost of Tsushima', 'ação-aventura', 199.00, 227, 2),
(24, 'Forza Horizon 5', 'corrida', 299.00, 330, 1),
(25, 'Forza Horizon 5', 'corrida', 249.00, 500, 2);

INSERT INTO Plataformas values
--id, nomeplat
(1, 'PC'),
(2, 'PS4'),
(3, 'PS5'),
(4, 'XBOX ONE'),
(5, 'XBOX SERIES');

INSERT INTO Jogos_Plataformas (IDJogo, IDPlataforma) values
--idjogo, idplataforma
(1, 2),
(1, 3),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 4),
(4, 2),
(5, 2),
(6, 2),
(6, 4),
(7, 1),
(7, 2),
(7, 4),
(8, 2),
(8, 3),
(9, 1),
(9, 2),
(9, 3),
(10, 2),
(10, 3),
(10, 4),
(10, 5),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(11, 5),
(12, 2),
(12, 3),
(12, 4),
(12, 5),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(14, 2),
(14, 3),
(14, 4),
(14, 5),
(15, 1),
(15, 2),
(15, 3),
(15, 4),
(15, 5),
(16, 3),
(16, 5),
(17, 1),
(17, 3),
(17, 5),
(18, 2),
(18, 3),
(18, 5),
(19, 1),
(19, 2),
(19, 3),
(19, 5),
(20, 2),
(20, 3),
(21, 2),
(21, 3),
(22, 2),
(22, 3),
(23, 1),
(23, 2),
(23, 3),
(24, 4),
(24, 5),
(25, 1),
(25, 4),
(25, 5);

INSERT INTO Detalhes_Pedido (IDPedido, IDJogo, Quantidade, Preço_Unitário) values
--idpedido, idjogo, quantidade, preco_unitario
(1, 1, 1, 299.00),
(1, 10, 1, 99.00),
(2, 4, 1, 89.00),
(3, 13, 2, 299.00),
(4, 17, 1, 249.00),
(4, 19, 1, 249.00),
(5, 20, 1, 259.00);

