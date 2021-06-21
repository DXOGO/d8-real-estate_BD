-- get all imoveis no mercado
DROP VIEW Proj.[view_getAllImob]
GO

CREATE VIEW Proj.[view_getAllImob]
AS
    SELECT preco, localizacao, ano_construcao, area_total, area_util
    FROM Proj.[imovel];
GO

-- get all imoveis de habitaçao
DROP VIEW Proj.[udf_getHabitacional]
GO

CREATE VIEW Proj.[view_getHabitacional]
AS
    SELECT I.preco, I.localizacao, I.ano_construcao, I.area_total, I.area_util, H.num_quartos, H.wcs
    FROM Proj.[imovel] AS I JOIN Proj.[habitacional] AS H 
    ON I.imovel_codigo = H.imovel_codigo
GO

-- get all imoveis de comercial
DROP VIEW Proj.[view_getComercial]
GO

CREATE VIEW Proj.[view_getComercial]
AS
	SELECT I.preco, I.localizacao, I.ano_construcao, I.area_total, I.area_util, C.estacionamento
    FROM Proj.[imovel] AS I JOIN Proj.[comercial] AS C
    ON I.imovel_codigo = C.imovel_codigo  
GO

-- get number of employees per department
DROP VIEW Proj.[view_getDepNumAgent]
GO

CREATE VIEW Proj.[view_getDepNumAgent]
AS
    SELECT D.dep_number, D.localizacao, COUNT(*) 
    FROM Proj.[agente] AS A JOIN Proj.[dept] AS D ON A.dep_no = D.dep_number
GO


-- criar codigo de imovel
CREATE VIEW Proj.[view_getImobRand]
AS
SELECT (CONCAT (CHAR(CAST((90-65)*RAND() + 65 as integer)), FLOOR(RAND()*(10000-1000)+1000))) AS Value

GO
-- criar codigo de proposta
CREATE VIEW Proj.[view_getPropRand]
AS
SELECT (CONCAT (CHAR(CAST((90-65)*RAND() + 65 AS INTEGER)), CHAR(CAST((90-65)*RAND() + 65 AS INTEGER)), 
			CHAR(CAST((90-65)*RAND() + 65 AS INTEGER)), CHAR(CAST((90-65)*RAND() + 65 AS INTEGER)), 
			CHAR(CAST((90-65)*RAND() + 65 AS INTEGER)))) AS Value
GO