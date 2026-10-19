USE secdeskdb;
GO

INSERT INTO autorizacoes (nome_autorizacao)
VALUES
    ('abrir_chamado'),
    ('ver_proprio_chamados'),
    ('ver_todos_chamados'),
    ('assumir_chamado'),
    ('concluir_chamado'),
    ('corrigir_categoria');  
GO
