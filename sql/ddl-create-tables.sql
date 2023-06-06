-- Tabela Usuario
CREATE TABLE IF NOT EXISTS Usuario (
    IdUsuario SERIAL PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Senha VARCHAR(50) NOT NULL,
    CriadoEm TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Tabela Chamado
CREATE TABLE IF NOT EXISTS Chamado (
    IdChamado SERIAL PRIMARY KEY,
    IdUsuario INTEGER REFERENCES Usuario(IdUsuario),
    Titulo VARCHAR(50) NOT NULL,
    Descricao VARCHAR(50) NOT NULL,
    DataEntrega TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    Prioridade VARCHAR(50) NOT NULL
);

-- Tabela Categoria
CREATE TABLE IF NOT EXISTS Categoria (
    IdCategoria SERIAL PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Descricao VARCHAR(100) NOT NULL
);

-- Tabela CategoriaChamado
CREATE TABLE IF NOT EXISTS CategoriaChamado (
    IdCategoriaChamado SERIAL PRIMARY KEY,
    IdChamado INTEGER REFERENCES Chamado(IdChamado),
    IdCategoria INTEGER REFERENCES Categoria(IdCategoria)
);

-- Tabela Status
CREATE TABLE IF NOT EXISTS Status (
    IDStatus INTEGER,
    IdChamado INTEGER REFERENCES Chamado(IdChamado),
    HorarioLembrete TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    Status VARCHAR(50) NOT NULL
);


-- Tabela Mensagem
CREATE TABLE IF NOT EXISTS Mensagem (
    IdComentario SERIAL PRIMARY KEY,
    IdChamado INTEGER REFERENCES Chamado(IdChamado),
    IdUsuario INTEGER REFERENCES Usuario(IdUsuario),
    TextoComentario TEXT NOT NULL,
    CriadoEm TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);