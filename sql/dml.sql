-- DML PARA TABELA USUARIO
INSERT INTO Usuario (Nome, Email, Senha)
VALUES ('Thiago', 'thiago@email.com', 'th123');

UPDATE Usuario
SET Senha = 'Th#123'
WHERE IdUsuario = 11;

DELETE FROM Usuario
WHERE IdUsuario = 11;

-- DML PARA TABELA CHAMADO
INSERT INTO Chamado (IdUsuario, Titulo, Descricao, DataEntrega, Prioridade)
VALUES (1, 'Chamado 61', 'Liberação de novo usuario', '2023-06-07', 'Alta');

UPDATE Chamado
SET Prioridade = 'Baixa'
WHERE IdChamado = 61;

DELETE FROM Chamado
WHERE IdChamado = 61;

-- DML PARA TABELA CATEGORIA
INSERT INTO Categoria (Nome, Descricao)
VALUES ('Teste', 'Problemas com pagamentos ou recebimentos');

UPDATE Categoria
SET Descricao = 'Sistema ERP'
WHERE IdCategoria = 12;

DELETE FROM Categoria
WHERE IdCategoria = 12;

-- DML PARA TABELA CATEGORIACHAMADO
INSERT INTO CategoriaChamado (IdChamado, IdCategoria)
VALUES (60, 11);

UPDATE CategoriaChamado
SET IdCategoria = 60
WHERE IdCategoriaChamado = 60;

DELETE FROM CategoriaChamado
WHERE IdCategoriaChamado = 5;

-- DML PARA TABELA STATUS
INSERT INTO Status (IDStatus, IdChamado, HorarioLembrete, Status)
VALUES (1, 2, '2023-06-08 10:00:00', 'Em andamento');

UPDATE Status
SET Status = 'Concluído'
WHERE IDStatus = 1;

DELETE FROM Status
WHERE IDStatus = 2;

-- DML PARA TABELA MENSAGEM
INSERT INTO Mensagem (IdChamado, IdUsuario, TextoComentario)
VALUES (1, 2, 'Problema resolvido');

UPDATE Mensagem
SET TextoComentario = 'Chamado finalizado'
WHERE IdComentario = 3;

DELETE FROM Mensagem
WHERE IdComentario = 4;



