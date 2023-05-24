CREATE TABLE IF NOT EXISTS Usuario (
  IdUsuario INT PRIMARY KEY,
  Nome VARCHAR(50),
  Email VARCHAR(100),
  Senha VARCHAR(100),
  CriadoEm timestamp 
);

INSERT INTO Usuario (IdUsuario, Nome, Email, Senha, CriadoEM)
VALUES
  (1, 'JohnDoe', 'johndoe@example.com', 'password123', '2023-05-01 10:00:00'),
  (2, 'JaneSmith', 'janesmith@example.com', 'password456', '2023-05-02 11:30:00'),
  (3, 'MikeJohnson', 'mikejohnson@example.com', 'password789', '2023-05-03 14:45:00'),
  (4, 'EmilyBrown', 'emilybrown@example.com', 'passwordabc', '2023-05-04 09:15:00'),
  (5, 'DavidWilson', 'davidwilson@example.com', 'passworddef', '2023-05-05 16:20:00'),
  (6, 'SarahTaylor', 'sarahtaylor@example.com', 'passwordxyz', '2023-05-06 12:00:00'),
  (7, 'MichaelDavis', 'michaeldavis@example.com', 'password123', '2023-05-07 08:30:00'),
  (8, 'LauraMiller', 'lauramiller@example.com', 'password456', '2023-05-08 10:45:00'),
  (9, 'DanielThompson', 'danielthompson@example.com', 'password789', '2023-05-09 13:15:00'),
  (10, 'OliviaClark', 'oliviaclark@example.com', 'passwordabc', '2023-05-10 15:00:00');
