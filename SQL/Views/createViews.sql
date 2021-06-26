-- get number of employees per department
-- DROP VIEW Proj.[view_getDepNumAgent]
-- GO

CREATE VIEW Proj.[view_getDepNumAgent]
AS
    SELECT D.dep_number, D.localizacao, COUNT(*) 
    FROM Proj.[agente] AS A JOIN Proj.[dept] AS D ON A.dep_no = D.dep_number
GO


-- mostrar todos os imoveis vendidos 
-- DROP VIEW Proj.[view_imoveisVendidos]
-- GO

CREATE VIEW Proj.[view_imoveisVendidos]
AS
	SELECT V.imovel_codigo, V.preco, V.localizacao, V.ano_construcao, V.area_total,
				V.area_util, V.proprietario_nif, P.interessado_nif, P.valor
	FROM Proj.[vendido] AS V JOIN Proj.[proposta] AS P ON V.proposta_codigo = P.proposta_codigo
GO


-- criar codigo de imovel
CREATE VIEW Proj.[view_getImobRand]
AS
SELECT (CONCAT (CHAR(CAST((90-65)*RAND() + 65 AS INTEREGER)), FLOOR(RAND()*(10000-1000)+1000))) AS Value

GO
-- criar codigo de proposta
CREATE VIEW Proj.[view_getPropRand]
AS
SELECT (CONCAT (CHAR(CAST((90-65)*RAND() + 65 AS INTEGER)), CHAR(CAST((90-65)*RAND() + 65 AS INTEGER)), 
			CHAR(CAST((90-65)*RAND() + 65 AS INTEGER)), CHAR(CAST((90-65)*RAND() + 65 AS INTEGER)), 
			CHAR(CAST((90-65)*RAND() + 65 AS INTEGER)))) AS Value
GO

-- criar referencia 
CREATE VIEW Proj.[view_getRefRand]
AS
SELECT (CONCAT (CHAR(CAST((90-65)*RAND() + 65 AS INTEGER)), 
			FLOOR(RAND()*(9999-1000)+1000), FLOOR(RAND()*(9999-1000)+1000))) AS Value
GO