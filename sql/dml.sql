-- DML PARA TABELA USUARIO
INSERT INTO Usuario (Nome, Email, Senha)
VALUES ('Thiago', 'thiago@email.com', 'th123');

UPDATE Usuario
SET Senha = 'Th#123'
WHERE IdUsuario = 1;

DELETE FROM Usuario
WHERE IdUsuario = 2;

-- DML PARA TABELA CHAMADO
INSERT INTO Chamado (IdUsuario, Titulo, Descricao, DataEntrega, Prioridade)
VALUES (1, 'Chamado 13', 'Liberação de novo usuario', '2023-06-07', 'Alta');

UPDATE Chamado
SET Prioridade = 'Baixa'
WHERE IdChamado = 3;

DELETE FROM Chamado
WHERE IdChamado = 4;

-- DML PARA TABELA CATEGORIA
INSERT INTO Categoria (Nome, Descricao)
VALUES ('Financeiro', 'Problemas com pagamentos ou recebimentos');

UPDATE Categoria
SET Descricao = 'Sistema ERP'
WHERE IdCategoria = 2;

DELETE FROM Categoria
WHERE IdCategoria = 3;

-- DML PARA TABELA CATEGORIACHAMADO
INSERT INTO CategoriaChamado (IdChamado, IdCategoria)
VALUES (1, 2);

UPDATE CategoriaChamado
SET IdCategoria = 4
WHERE IdCategoriaChamado = 3;

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



