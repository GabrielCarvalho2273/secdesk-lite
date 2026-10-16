USE secdeskdb;
GO

CREATE TABLE autorizacoes(
  id INT IDENTITY(1,1) PRIMARY KEY,
  nome_autorizacao VARCHAR(150) NOT NULL UNIQUE
);
GO
