USE secdeskdb;
GO

CREATE TABLE usuarios(
    id INT IDENTITY(1,1) PRIMARY KEY, 
    papel_id INT NOT NULL,
    nome_usuario VARCHAR(100) NOT NULL,
    email VARCHAR(256) NOT NULL UNIQUE,
    senha_hash VARCHAR(150) NOT NULL,
    FOREIGN KEY (papel_id) REFERENCES papeis (id)
);
