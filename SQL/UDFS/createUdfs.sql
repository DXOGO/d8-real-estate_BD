USE p5g5
GO;
-- UDFS


-- ver se mail existe
-- DROP FUNCTION Proj.[udf_validateEmail]
-- GO

CREATE FUNCTION Proj.[udf_validateEmail](@email VARCHAR(50)) RETURNS INT
AS
BEGIN
	IF EXISTS(SELECT * FROM Proj.[Pessoa] AS P WHERE P.email = @email)
		RETURN 1;
	RETURN 0;
END
GO


-- all info about agente
--DROP FUNCTION Proj.[udf_getAgenteInfo]
-- GO

CREATE FUNCTION Proj.[udf_getAgenteInfo](@nif INT) RETURNS TABLE
AS
    RETURN (SELECT * FROM Proj.[agente] AS A JOIN Proj.[Pessoa] AS P ON A.agente_nif = P.nif WHERE A.nif = @nif);
GO


-- pessoa só pode ser interessado e/ou proprietario se nao for agente (agente é SÓ agente)
-- DROP FUNCTION Proj.[udf_isAgent]
-- GO

CREATE FUNCTION Proj.[udf_isAgent](@nif INT) RETURNS INT
AS
BEGIN
    DECLARE @temp AS INT
    DECLARE @id INT -- save agente nif
	SET @temp = (SELECT agente_nif FROM (Proj.[Pessoa] AS P JOIN Proj.[agente] AS A ON P.nif = A.agente_nif) WHERE P.nif = @nif);
	
    IF @temp IS NULL
		SET @id=0;
    ELSE
        SET @id=@temp
	
    RETURN @id; -- 0: nao é agente, 1: é agente
END
GO

-- get marcacoes para imovel
-- DROP FUNCTION Proj.[udf_getMarcacao]
-- GO

CREATE FUNCTION Proj.[udf_getMarcacao] (@cod VARCHAR(5)) RETURNS TABLE
AS
	RETURN (SELECT I.imovel_codigo, I.localizacao, I.proprietario_nif, M.data_marc
			FROM Proj.[imovel] AS I JOIN Proj.[marcacao] AS M ON I.imovel_codigo = M.imovel_codigo
			WHERE I.imovel_codigo = @cod)
GO


-- get all imoveis no mercado com um especifico tipo de negocio 
--DROP FUNCTION Proj.[udf_getImobNegocio]
--GO

CREATE FUNCTION Proj.[udf_getImobNegocio] (@nid INT) RETURNS TABLE
AS

    RETURN (SELECT TP.designacao_negocio, I.preco, I.localizacao, I.ano_construcao, I.area_total, I.area_util
			FROM Proj.[imovel] AS I JOIN Proj.[negocio] AS N ON I.imovel_codigo = N.imovel_codigo  
			JOIN Proj.[tipoNegocio] AS TP ON N.tipo_negocio_id = TP.id
            WHERE TP.id = @nid)
    -- RETURN @table
GO


-- get specific type of habitaçao
--DROP FUNCTION Proj.[udf_getHabitacionalInfo]
-- GO

CREATE FUNCTION Proj.[udf_getHabitacionalInfo] (@nid INT) RETURNS TABLE
AS 
    RETURN (SELECT TH.designacao_habitacional, I.preco, I.localizacao, I.ano_construcao, I.area_total, I.area_util, H.num_quartos, H.wcs
            FROM Proj.[imovel] AS I JOIN Proj.[habitacional] AS H ON I.imovel_codigo = H.imovel_codigo
            JOIN Proj.[tipoHabitacional] AS TH ON H.tipo_habitacional_id = TH.id
                    WHERE TH.id = @nid)
GO


-- get specific type of comercial
-- DROP FUNCTION Proj.[udf_getComercialInfo]
-- GO

CREATE FUNCTION Proj.[udf_getComercialInfo] (@nid INT) RETURNS TABLE
AS
    RETURN (SELECT TC.designacao, I.preco, I.localizacao, I.ano_construcao, I.area_total, I.area_util, C.estacionamento
            FROM Proj.[imovel] AS I JOIN Proj.[comercial] AS C ON I.imovel_codigo = C.imovel_codigo
            JOIN Proj.[tipoComercial] AS TC ON C.tipo_comercial_id = TC.id
            WHERE TC.id = @nid)     
GO


-- create imovel code
-- DROP FUNCTION Proj.[udf_createImovelCode]
-- GO

CREATE FUNCTION Proj.[udf_createImovelCode] () RETURNS VARCHAR(5)
AS
BEGIN
	DECLARE @temp VARCHAR(5)
	SET @temp = (SELECT Value FROM p5g5.Proj.[view_getImobRand])

	WHILE EXISTS (SELECT imovel_codigo FROM p5g5.Proj.[imovel] WHERE imovel_codigo = @temp)
		BEGIN
			SET @temp = (SELECT Value FROM p5g5.Proj.[view_getImobRand])
		END
	RETURN @temp
END
GO


-- create proposta code
-- DROP FUNCTION Proj.[udf_createPropostaCode]
-- GO

CREATE FUNCTION Proj.[udf_createPropostaCode] () RETURNS VARCHAR(5)
AS
BEGIN
	DECLARE @temp VARCHAR(5)
	SET @temp = (SELECT Value FROM p5g5.Proj.[view_getPropRand])

	WHILE EXISTS (SELECT proposta_codigo FROM p5g5.Proj.[proposta] WHERE proposta_codigo = @temp)
		BEGIN
			SET @temp = (SELECT Value FROM p5g5.Proj.[view_getPropRand])
		END
	RETURN @temp
END
GO


-- create proposta code
-- DROP FUNCTION Proj.[udf_createRefCode]
-- GO

CREATE FUNCTION Proj.[udf_createRefCode] () RETURNS VARCHAR(9)
AS
BEGIN
	DECLARE @temp VARCHAR(9)
	SET @temp = (SELECT Value FROM p5g5.Proj.[view_getRefRand])

	WHILE EXISTS (SELECT referencia FROM p5g5.Proj.[negocio] WHERE referencia = @temp)
		BEGIN
			SET @temp = (SELECT Value FROM p5g5.Proj.[view_getRefRand])
		END
	RETURN @temp
END
GO


-- recebe codigo imovel e devolve propostas para imovel especifico
-- DROP FUNCTION Proj.[udf_getPropostas]
-- GO

CREATE FUNCTION Proj.[udf_getPropostas] (@imovel_codigo VARCHAR(5)) RETURNS TABLE
AS
	-- dps se tivermos tempo podemos mudar/adicionar em vez de mostrar NIF mostrar nomes
	RETURN (SELECT P.proposta_codigo, P.valor, P.interessado_nif FROM p5g5.Proj.[imovel] AS I 
			JOIN p5g5.Proj.[proposta] AS P ON I.imovel_codigo = P.imovel_codigo
			WHERE I.imovel_codigo = @imovel_codigo
	)
GO


-- recebe nif agente e devolve o(s) proprietario(s) que ele gere, os imoveis que eles possuem e as propostas para cada imovel
-- DROP FUNCTION Proj.[udf_getAgenteWork]
-- GO

CREATE FUNCTION Proj.[udf_getAgenteWork] (@agente_nif INT) RETURNS TABLE
AS
	RETURN (SELECT P.proprietario_nif, I.imovel_codigo, I.preco, PR.proposta_codigo, PR.interessado_nif, PR.valor
			FROM p5g5.Proj.[agente] AS A -- ligar agente ao proprietario
			JOIN p5g5.Proj.[proprietario] AS P ON A.agente_nif = P.agente_nif
			JOIN p5g5.Proj.[imovel] AS I ON P.proprietario_nif = I.proprietario_nif -- ligar agente e propritario ao imovel
			JOIN p5g5.Proj.[proposta] AS PR ON I.imovel_codigo = PR.imovel_codigo	-- ligar imovel as propostas
			WHERE A.agente_nif = @agente_nif
	)
GO

-- recebe proprietario e devolve o agente responsavel, o(s) imovel(s) q ele possui e todas as suas marcacoes bem como o interessado q as fez
-- DROP FUNCTION Proj.[udf_getMarcProp]
-- GO

CREATE FUNCTION Proj.[udf_getMarcProp] (@proprietario_nif INT) RETURNS TABLE
AS
	RETURN (SELECT P.agente_nif, I.imovel_codigo, I.preco, I.localizacao, I.ano_construcao, I.area_total, I.area_util, M.data_marc, M.interessado_nif
				FROM p5g5.Proj.[proprietario] AS P JOIN p5g5.Proj.[imovel] AS I ON P.proprietario_nif = I.proprietario_nif
				JOIN p5g5.Proj.[marcacao] AS M ON I.imovel_codigo = M.imovel_codigo
				WHERE P.proprietario_nif = @proprietario_nif
	)
GO


-- recebe agente e devolve imovel(s) de cada proprietario com quem trabalha e todas as suas marcacoes 
-- DROP FUNCTION Proj.[udf_getMarcAgente]
-- GO

CREATE FUNCTION Proj.[udf_getMarcAgente] (@agente_nif INT) RETURNS TABLE
AS
	RETURN (SELECT P.proprietario_nif, I.imovel_codigo, M.interessado_nif, M.data_marc
			FROM p5g5.Proj.[agente] AS A -- ligar agente ao proprietario
			JOIN p5g5.Proj.[proprietario] AS P ON A.agente_nif = P.agente_nif
			JOIN p5g5.Proj.[imovel] AS I ON P.proprietario_nif = I.proprietario_nif -- ligar agente e propritario ao imovel
			JOIN p5g5.Proj.[marcacao] AS M ON I.imovel_codigo = M.imovel_codigo -- ligar imovel a marcacao
			WHERE A.agente_nif = @agente_nif
	)
GO


CREATE FUNCTION Proj.[esti8] (@gordo VARCHAR(5)) RETURNS VARCHAR(50)
AS 
BEGIN
    DECLARE @tipo_imovel VARCHAR(50)
    IF EXISTS (SELECT * FROM proj.[habitacional] WHERE imovel_codigo = @gordo)
    BEGIN    
        SET @tipo_imovel = 'habitacional'
    END

    IF EXISTS (SELECT * FROM proj.[comercial] WHERE imovel_codigo = @gordo)
    BEGIN    
        SET @tipo_imovel = 'comercial'
    END
    RETURN @tipo_imovel
END