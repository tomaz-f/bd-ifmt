-- Inserção de registros na tabela Usuario
INSERT INTO Usuario (IdUsuario, Nome, Email, Senha, CriadoEM)
VALUES
  (1, 'Joao', 'joao@example.com', 'password123', '2023-05-01 10:00:00'),
  (2, 'Joana', 'joana@example.com', 'password456', '2023-05-02 11:30:00'),
  (3, 'Michael', 'michael@example.com', 'password789', '2023-05-03 14:45:00'),
  (4, 'Emilly', 'emilly@example.com', 'passwordabc', '2023-05-04 09:15:00'),
  (5, 'Davi', 'davi@example.com', 'passworddef', '2023-05-05 16:20:00'),
  (6, 'Sarah', 'sarah@example.com', 'passwordxyz', '2023-05-06 12:00:00'),
  (7, 'Marcelo', 'marcelo@example.com', 'password123', '2023-05-07 08:30:00'),
  (8, 'Laura', 'laura@example.com', 'password456', '2023-05-08 10:45:00'),
  (9, 'Daniel', 'daniel@example.com', 'password789', '2023-05-09 13:15:00'),
  (10, 'Olivia', 'olivia@example.com', 'passwordabc', '2023-05-10 15:00:00');

-- Inserção de registros na tabela Chamado
INSERT INTO Chamado (IdUsuario, Titulo, Descricao, DataEntrega, Prioridade)
VALUES
    (1, 'Chamado 1', 'Descrição do chamado 1', NOW(), 'Alta'),
    (2, 'Chamado 2', 'Descrição do chamado 2', NOW(), 'Média'),
    (3, 'Chamado 3', 'Descrição do chamado 3', NOW(), 'Baixa'),
    (4, 'Chamado 4', 'Descrição do chamado 4', NOW(), 'Alta'),
    (5, 'Chamado 5', 'Descrição do chamado 5', NOW(), 'Média'),
    (6, 'Chamado 6', 'Descrição do chamado 6', NOW(), 'Baixa'),
    (7, 'Chamado 7', 'Descrição do chamado 7', NOW(), 'Alta'),
    (8, 'Chamado 8', 'Descrição do chamado 8', NOW(), 'Média'),
    (9, 'Chamado 9', 'Descrição do chamado 9', NOW(), 'Baixa'),
    (10, 'Chamado 10', 'Descrição do chamado 10', NOW(), 'Alta');

-- Inserção de registros na tabela Categoria
INSERT INTO Categoria (Nome, Descricao)
VALUES
    ('Categoria 1', 'Descrição da categoria 1'),
    ('Categoria 2', 'Descrição da categoria 2'),
    ('Categoria 3', 'Descrição da categoria 3'),
    ('Categoria 4', 'Descrição da categoria 4'),
    ('Categoria 5', 'Descrição da categoria 5'),
    ('Categoria 6', 'Descrição da categoria 6'),
    ('Categoria 7', 'Descrição da categoria 7'),
    ('Categoria 8', 'Descrição da categoria 8'),
    ('Categoria 9', 'Descrição da categoria 9'),
    ('Categoria 10', 'Descrição da categoria 10');

-- Inserção de registros na tabela CategoriaChamado
INSERT INTO CategoriaChamado (IdChamado, IdCategoria)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);

-- Inserção de registros na tabela Status
INSERT INTO Status (IDChamado, IdTarefa, HorarioLembrete)
VALUES
    (1, 1, NOW()),
    (2, 2, NOW()),
    (3, 3, NOW()),
    (4, 4, NOW()),
    (5, 5, NOW()),
    (6, 6, NOW()),
    (7, 7, NOW()),
    (8, 8, NOW()),
    (9, 9, NOW()),
    (10, 10, NOW());

-- Inserção de registros na tabela Mensagem
INSERT INTO Mensagem (IdTarefa, IdUsuario, TextoComentario, CriadoEm)
VALUES
    (1, 1, 'Comentário 1', NOW()),
    (2, 2, 'Comentário 2', NOW()),
    (3, 3, 'Comentário 3', NOW()),
    (4, 4, 'Comentário 4', NOW()),
    (5, 5, 'Comentário 5', NOW()),
    (6, 6, 'Comentário 6', NOW()),
    (7, 7, 'Comentário 7', NOW()),
    (8, 8, 'Comentário 8', NOW()),
    (9, 9, 'Comentário 9', NOW()),
    (10, 10, 'Comentário 10', NOW());
