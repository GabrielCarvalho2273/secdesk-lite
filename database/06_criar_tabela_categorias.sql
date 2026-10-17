USE secdeskdb;
GO

CREATE TABLE categorias(
  id INT IDENTITY(1,1) PRIMARY KEY,
  nome_categoria VARCHAR(150) UNIQUE NOT NULL
);
GO
