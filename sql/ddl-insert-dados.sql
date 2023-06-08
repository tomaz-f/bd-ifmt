-- Inserindo dados na tabela "Usuario"
INSERT INTO Usuario (Nome, Email, Senha)
VALUES
('Felipe', 'felipe@email.com', 'senha1'),
('Marcio', 'Marcio@email.com', 'senha2'),
('Kacia', 'Kacia@email.com', 'senha3'),
('Renata', 'Renata@email.com', 'senha4'),
('Leandro', 'Leandro@email.com', 'senha5'),
('Daniel', 'Daniel@email.com', 'senha6'),
('Maria', 'Maria@email.com', 'senha7'),
('Joana', 'Joana@email.com', 'senha8'),
('Lucas', 'Lucas@email.com', 'senha9'),
('Waldir', 'Waldir@email.com', 'senha10');

-- Inserindo dados na tabela "Categoria"
INSERT INTO Categoria (Nome, Descricao)
VALUES
--1
('Hardware', 'Computadores, notebooks, telas, etc.'),
--2
('Sistema', 'Sistema ERP e CRM'),
--3
('Login', 'Erros de acesso, troca de senha, etc.'),
--4
('Redes', 'Rede, internet, etc.'),
--5
('Impressão', 'Impressora, scanner, etc.'),
--6
('Softwares', 'Software, sistema operacional, etc.'),
--7
('Financeiro', 'Pagamentos, recebimentos, etc.'),
--8
('Vendas', 'Vendas, pedidos, etc.'),
--9
('Comunicação', 'Telefone, e-mail, etc.'),
--10
('Acesso Externo', 'VPN, acesso remoto, etc.'),
--11
('Perifericos', 'Mouse e teclado, etc.');

-- Inserindo dados na tabela "Chamado"
INSERT INTO Chamado (IdUsuario, Titulo, Descricao, DataEntrega, Prioridade)
VALUES
(1, 'Telefone com problema', 'telefone não sai som', '2023-02-23', 'Alta'),
(2, 'Sistema', 'Sistema ERP, ', '2023-02-15', 'Média'),
(3, 'Chamado 3', 'Venda bloqueada', '2023-03-10', 'Baixa'),
(4, 'Chamado 4', 'Impressora sem fio não conecta', '2023-03-13', 'Alta'),
(5, 'Chamado 5', 'Sistema lento', '2023-03-20', 'Média'),
(6, 'Chamado 6', 'Computador não lê um pendrive', '2023-03-25', 'Baixa'),
(7, 'Chamado 7', 'Teclado não funciona', '2023-04-02', 'Alta'),
(8, 'Chamado 8', 'Monitor desligando de tempos em tempos', '2023-04-10', 'Média'),
(9, 'Chamado 9', 'Computador não liga', '2023-04-12', 'Baixa'),
(10, 'Chamado 10', 'Usuario não loga na vpn', '2023-04-13', 'Alta'),
(2, 'Chamado 11', 'Computador lento', '2023-04-15', 'Média'),
(3, 'Chamado 12', 'Falhas no disco rígido', '2023-04-17', 'Média'),
(3, 'Chamado 13', 'Problemas de memória RAM', '2023-04-18', 'Média'),
(4, 'Chamado 14', 'Superaquecimento do CPU', '2023-04-19', 'Média'),
(5, 'Chamado 15', 'Placa de vídeo defeituosa', '2023-04-20', 'Média'),
(6, 'Chamado 16', 'Problemas na placa-mãe', '2023-04-21', 'Média'),
(7, 'Chamado 17', 'Tela defeituosa', '2023-04-29', 'Média'),
(8, 'Chamado 18', 'Tela defeituosa', '2023-04-29', 'Média'),
(9, 'Chamado 19', 'Bateria esgotada', '2023-05-01', 'Média'),
(10, 'Chamado 20', 'Teclado ou touchpad defeituosos', '2023-05-02', 'Média'),
(10, 'Chamado 21', 'Tempo de esgotamento da sessão', '2023-07-01', 'Média'),
(10, 'Chamado 22', 'Conexão da VPN é rejeitada', '2023-08-05', 'Média'),
(10, 'Chamado 23', 'Problemas ao estabelecer conexão com o computador remoto', '2023-05-05', 'Alta'),
(8, 'Chamado 24', 'Falha ao processar à venda', '2023-09-09', 'Alta'),
(2, 'Chamado 25', 'Descentralização de dados', '2023-09-18', 'Alta'),
(6, 'Chamado 26', 'Versão não suportada pelo fabricante', '2023-04-03', 'Alta'),
(6, 'Chamado 27', 'Falha na criptografia', '2023-05-01', 'Alta');
 
 


-- Inserindo dados na tabela "CategoriaChamado"
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
(10, 10),
(11, 4),
(12,1),
(13,1),
(14,1),
(15,1),
(16,1),
(17,1),
(18,1),
(19,1),
(20,1),
(21,10),
(22,10),
(23,10),
(24,8),
(25,2),
(26,6),
(27,6);


-- Inserindo dados na tabela "Status"
INSERT INTO Status (IdChamado, HorarioLembrete, Status)
VALUES
(1, NOW(), 'Em progresso'),
(2, NOW(), 'Aguardando'),
(3, NOW(), 'Concluído'),
(4, NOW(), 'Em progresso'),
(5, NOW(), 'Aguardando'),
(6, NOW(), 'Concluído'),
(7, NOW(), 'Em progresso'),
(8, NOW(), 'Aguardando'),
(9, NOW(), 'Concluído'),
(10, NOW(), 'Em progresso'),
(12, '2023-05-27', 'Em aberto'),
(21, '2023-07-03', 'Aguardando'),
(22, '2023-08-06', 'Concluído'),
(23, '2023-05-06', 'Aguardando'),
(24, '2023-09-10', 'Em aberto'),
(25, '2023-09-20', 'Aguardando'),
(26, '2023-04-05', 'Em progresso'),
(27, '2023-05-02', 'Aguardando');                              



-- Inserindo dados na tabela "Mensagem"
INSERT INTO Mensagem (IdChamado, IdUsuario, TextoComentario, CriadoEm)
VALUES
(1, 1, 'Problema com telefone', NOW()),
(2, 2, 'Sistema trava na tela de login', NOW()),
(3, 3, 'Cliente com crédito bloqueado',NOW()),
(4, 4, 'Impressora sem fio não conecta',NOW()),
(5, 5, 'O sistema demora pra responder quando está na tela de orçamento',NOW()),
(6, 6, 'O computador bloqueia meu pendrive com as planilhas de venda',NOW()),
(7, 7, 'Teclado usb não funciona em nenhuma entrada',NOW()),
(8, 8, 'Monitor desliga no meio do atendimento a cada meia hora',NOW()),
(9, 9, 'Computador não da sinal de energia e não liga',NOW()),
(10, 10, 'Usuario está com o login bloqueado na vpn', NOW()),
(12, 9, 'Internt não funciona', '2023-05-27'),
(21, 10, 'Problemas com tempo esgotado da sessão', '2023-07-04'),
(22, 10, 'A conexão VPN é rejeitada', '2023-08-08'),
(23, 10, 'Não é possível estabelecer uma conexão com o computador remoto', '2023-05-08'),
(24, 8, 'Venda não pode ser processada', '2023-09-12'),
(25,2, 'Base de dados descentralizados', '2023-09-21'),
(26,6, 'Versão do software não é mais suportada pelo fabricante', '2023-04-07'),
(27,6, 'Falhas na criptografia', '2023-05-04');
  
