--Consulta para obter todos os chamados com as informações do usuário associado:
SELECT c.IdChamado, c.Titulo, u.Nome AS NomeUsuario, c.DataEntrega
FROM Chamado c
JOIN Usuario u ON c.IdUsuario = u.IdUsuario
ORDER BY c.IdChamado;


--Consulta para listar os chamados de alta prioridade ordenados pela data de entrega:
SELECT c.IdChamado, c.Titulo, c.DataEntrega, c.Prioridade
FROM Chamado c
WHERE c.Prioridade = 'Alta'
ORDER BY c.DataEntrega;

--Consulta para contar o número de chamados por categoria:
SELECT cat.Nome AS NomeCategoria, COUNT(*) AS TotalChamados
FROM Categoria cat
INNER JOIN CategoriaChamado cc ON cat.IdCategoria = cc.IdCategoria
GROUP BY cat.Nome
ORDER BY TotalChamados DESC;

--Consulta para listar os usuários com a quantidade de chamados associados a cada um:
SELECT u.Nome, COUNT(c.IdChamado) AS TotalChamados
FROM Usuario u
INNER JOIN Chamado c ON u.IdUsuario = c.IdUsuario
GROUP BY u.Nome
ORDER BY TotalChamados Desc;

--Consulta para obter os chamados concluídos, juntamente com os detalhes do status e do usuário associado:
SELECT c.IdChamado, c.Titulo, s.Status, u.Nome AS NomeUsuario
FROM Chamado c
JOIN Status s ON c.IdChamado = s.IdChamado
JOIN Usuario u ON c.IdUsuario = u.IdUsuario
WHERE s.Status = 'Concluído'
ORDER BY c.IdChamado;

--Consulta para listar as categorias com a quantidade de chamados em cada uma, ordenadas pelo total de chamados em ordem decrescente:
SELECT cat.Nome AS NomeCategoria, COUNT(cc.IdChamado) AS TotalChamados
FROM Categoria cat
INNER JOIN CategoriaChamado cc ON cat.IdCategoria = cc.IdCategoria
GROUP BY cat.Nome
ORDER BY TotalChamados DESC;

--Consulta para buscar os chamados que possuem um texto específico em seus comentários:
SELECT c.IdChamado, c.Titulo, m.TextoComentario
FROM Chamado c
JOIN Mensagem m ON c.IdChamado = m.IdChamado
WHERE m.TextoComentario LIKE '%texto_pesquisado%'
ORDER BY c.IdChamado;

--Consulta para listar os usuários com a média de chamados associados a cada um, utilizando a função AVG:
SELECT u.Nome, AVG(chamados_por_usuario.TotalChamados) AS MediaChamados
FROM Usuario u
INNER JOIN (
    SELECT IdUsuario, COUNT(IdChamado) AS TotalChamados
    FROM Chamado
    GROUP BY IdUsuario
) chamados_por_usuario ON u.IdUsuario = chamados_por_usuario.IdUsuario
GROUP BY u.Nome
ORDER BY MediaChamados DESC;


--Consulta para obter os chamados ordenados pela quantidade de comentários associados a cada um:
SELECT c.IdChamado, c.Titulo, COUNT(m.IdComentario) AS TotalComentarios
FROM Chamado c
INNER JOIN Mensagem m ON c.IdChamado = m.IdChamado
GROUP BY c.IdChamado, c.Titulo
ORDER BY c.IdChamado;

