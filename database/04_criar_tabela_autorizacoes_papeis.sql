USE secdeskdb;
GO

CREATE TABLE papeis_autorizacoes(
  papel_id INT NOT NULL,
  autorizacao_id INT NOT NULL,
  FOREIGN KEY (papel_id) REFERENCES papeis (id),
  FOREIGN KEY (autorizacao_id) REFERENCES autorizacoes (id)
);
GO
