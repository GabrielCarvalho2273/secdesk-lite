USE secdeskdb;
GO

CREATE TABLE chamados(
  id INT IDENTITY(1,1) PRIMARY KEY,
  titulo VARCHAR(150) NOT NULL,
  descricao VARCHAR(MAX) NOT NULL,
  tipo VARCHAR(25) NOT NULL,
  categoria_id INT NOT NULL,
  status VARCHAR(20) NOT NULL,
  aberto_por_id INT NOT NULL,
  responsavel_atendente_id INT,
  concluido_por_atendente_id INT,
  data_abertura DATETIME2 NOT NULL DEFAULT SYSDATETIME(),
  data_conclusao DATETIME2,
  solucao VARCHAR(MAX),
  severidade VARCHAR(20),

  FOREIGN KEY (aberto_por_id) REFERENCES usuarios(id),
  FOREIGN KEY (categoria_id) REFERENCES categorias(id),
  FOREIGN KEY (responsavel_atendente_id) REFERENCES usuarios(id),
  FOREIGN KEY (concluido_por_atendente_id) REFERENCES usuarios(id)
);
GO
