-- get all imoveis no mercado
DROP VIEW Proj.[view_getAllImob]
GO

CREATE VIEW Proj.[view_getAllImob]
AS
    SELECT (preco, localizacao, ano_construcao, area_total, area_util
            FROM Proj.[imovel]);