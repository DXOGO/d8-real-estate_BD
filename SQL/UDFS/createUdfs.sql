-- UDFS


-- ver se mail existe
DROP FUNCTION Proj.[udf_validateEmail]
GO

CREATE FUNCTION Proj.[udf_validateEmail](@email VARCHAR(50)) RETURNS INT
AS
BEGIN
	IF EXISTS(SELECT * FROM Project.[Pessoa] AS P WHERE P.email = @email)
		RETURN 1;
	RETURN 0;
END
GO


-- ver se nif existe
DROP FUNCTION Proj.[udf_validadeNIF]
GO

CREATE FUNCTION Proj.[udf_validadeNIF](@nif INT) RETURNS INT
AS
BEGIN
	DECLARE @temp AS INT
	SET @temp = ( SELECT person_nif FROM Proj.[Pessoa] AS P WHERE P.nif = @nif);
	if @temp is null
		RETURN 0;
	RETURN @temp;
END
GO


-- all info about pessoa
DROP FUNCTION Proj.[udf_getPessoaInfo]
GO

CREATE FUNCTION Proj.[udf_getPessoaInfo] (@nif INT) RETURNS TABLE
AS
BEGIN 
    RETURN (SELECT * FROM Proj.[pessoa] AS P WHERE P.nif = @nif);
END
GO


-- all info about agente
DROP FUNCTION Proj.[udf_getAgenteInfo]
GO

CREATE FUNCTION Proj.[udf_getAgenteInfo] (@nif INT) RETURNS TABLE
AS
BEGIN 
    RETURN (SELECT * FROM Proj.[agente] AS A JOIN Proj.[Pessoa] AS P ON A.nif = P.nif) WHERE A.nif = @nif;
END
GO


-- pessoa só pode ser interessado e/ou proprietario se nao for agente (agente é SÓ agente)
DROP FUNCTION Proj.[udf_isAgent]
GO

CREATE FUNCTION Proj.[udf_isAgent](@nif INT) RETURNS INT
AS
BEGIN
    DECLARE @temp AS INT
    DECLARE @id INT -- save agente nif
	SET @temp = ( SELECT agente_nif FROM (Proj.[Pessoa] AS P JOIN Proj.[agente] AS A ON P.nif = A.agente_nif) WHERE P.nif = @nif);
	
    IF @temp IS NULL
		SET @id=0;
    ELSE
        SET @id=@temp
	
    RETURN @id;
END
GO


-- get all imoveis no mercado
DROP FUNCTION Proj.[udf_getAllImob]
GO

CREATE FUNCTION Proj.[udf_getAllImob] () RETURNS @table TABLE (preco INT NOT NULL, localizacao VARCHAR(50) NOT NULL,
                                                                ano_construcao INT NOT NULL, area_total INT NOT NULL, area_util INT NOT NULL)
AS
BEGIN
    DECLARE @preco AS INT, @localizacao AS VARCHAR(50),@ano_construcao AS INT,
	@area_total AS INT, @area_util AS INT;

    INSERT @table (SELECT preco, localizacao, ano_construcao, area_total, area_util
                    FROM Proj.[imovel]);
END
GO


-- get all imoveis no mercado numa cidade especifica
DROP FUNCTION Proj.[udf_getCityImob]
GO

CREATE FUNCTION Proj.[udf_getCityImob] (@loc VARCHAR(50)) RETURNS TABLE
AS
BEGIN 
    RETURN (SELECT preco, localizacao, ano_construcao, area_total, area_util
            FROM Proj.[imovel] AS I WHERE I.localizacao = @loc
            ORDER BY preco ASC);
END
GO


-- get all imoveis no mercado abaixo e acima de um certo preço
DROP FUNCTION Proj.[udf_getCityPrice]
GO

CREATE FUNCTION Proj.[udf_getCityPrice] (@min_price INT, @max_price INT) RETURNS TABLE
AS
BEGIN 
    RETURN (SELECT preco, localizacao, ano_construcao, area_total, area_util
            FROM Proj.[imovel] AS I WHERE I.preco < @max_price AND I.preco > @min_price);
END
GO


-- get info about a specific imovel
DROP FUNCTION Proj.[udf_getImobInfo]
GO

CREATE FUNCTION Proj.[udf_getImobInfo] (@code VARCHAR(5)) RETURNS TABLE
AS
BEGIN 
    RETURN (SELECT preco, localizacao, ano_construcao, area_total, area_util
            FROM Proj.[imovel] AS I WHERE I.imovel_codigo = @code);
END
GO


-- get all imoveis no mercado com um especifico tipo de negocio 
DROP FUNCTION Proj.[udf_getImobNegocio]

CREATE FUNCTION Proj.[udf_getImobNegocio] (@nid INT) RETURNS @table TABLE(preco INT NOT NULL, localizacao VARCHAR(50) NOT NULL,
                                                                ano_construcao INT NOT NULL, area_total INT NOT NULL, area_util INT NOT NULL)
AS
BEGIN
    -- IF @nid > 3 OR @nid < 0
    --     @nid = 1;    -- default value case if user input isn't valid

    -- DECLARE @preco AS INT, @localizacao AS VARCHAR(50),@ano_construcao AS INT,
    -- @area_total AS INT, @area_util AS INT;

    -- INSERT @table
    RETURN (SELECT (
            preco, localizacao, ano_construcao, area_total, area_util
            FROM Proj.[imovel] AS I JOIN Proj.[negocio] AS N 
            ON I.imovel_codigo = N.imovel_codigo ) 
                JOIN (Proj.[tipoNegocio] AS TP ON N.tipo_negocio_id = TP.id
                    WHERE TP.id = @nid)     
    )
    -- RETURN @table
END
GO


-- get all imoveis de habitaçao
DROP FUNCTION Proj.[udf_getHabitacional]
GO

CREATE FUNCTION Proj.[udf_getHabitacional] () RETURNS TABLE
AS
BEGIN 
    RETURN (SELECT I.preco, I.localizacao, I.ano_construcao, I.area_total, I.area_util, H.num_quartos, H.wcs
            FROM Proj.[imovel] AS I JOIN Proj.[habitacional] AS H 
            ON I.imovel_codigo = H.imovel_codigo
END
GO


-- get specific type of habitaçao
DROP FUNCTION Proj.[udf_getHabitacionalInfo]
GO

CREATE FUNCTION Proj.[udf_getHabitacionalInfo] (@nid INT) RETURNS TABLE
AS
BEGIN 
    -- IF @nid > 5 OR @nid < 0
    --     @nid = 1;    -- default value case if user input isn't valid

    -- DECLARE @preco AS INT, @localizacao AS VARCHAR(50), @ano_construcao AS INT,
    -- @area_total AS INT, @area_util AS INT, @estacionamento BOOLEAN;

    -- INSERT @table 
    RETURN (SELECT (
            I.preco, I.localizacao, I.ano_construcao, I.area_total, I.area_util, H.num_quartos, H.wcs
            FROM Proj.[imovel] AS I JOIN Proj.[habitacional] AS H
            ON I.imovel_codigo = H.imovel_codigo) 
                JOIN (Proj.[tipoHabitacional] AS TH ON H.tipo_negocio_id = TH.id
                    WHERE TH.id = @nid)     
    )
    -- RETURN @table
END
END
GO


-- get all imoveis de comercial
DROP FUNCTION Proj.[udf_getComercial]
GO

CREATE FUNCTION Proj.[udf_getComercial] () RETURNS TABLE
AS
BEGIN 
    RETURN (SELECT I.preco, I.localizacao, I.ano_construcao, I.area_total, I.area_util, C.estacionamento
            FROM Proj.[imovel] AS I JOIN Proj.[comercial] AS C
            ON I.imovel_codigo = C.imovel_codigo  
END
GO

-- get specific type of comercial
DROP FUNCTION Proj.[udf_getComercialInfo]
GO

CREATE FUNCTION Proj.[udf_getComercialInfo] (@nid INT) RETURNS TABLE
AS
BEGIN 
    -- IF @nid > 3 OR @nid < 0
    --     @nid = 1;    -- default value case if user input isn't valid

    -- DECLARE @preco AS INT, @localizacao AS VARCHAR(50), @ano_construcao AS INT,
    -- @area_total AS INT, @area_util AS INT, @estacionamento BIT;

    -- INSERT @table 
    RETURN (SELECT (
            I.preco, I.localizacao, I.ano_construcao, I.area_total, I.area_util, C.estacionamento
            FROM Proj.[imovel] AS I JOIN Proj.[comercial] AS C
            ON I.imovel_codigo = C.imovel_codigo ) 
                JOIN (Proj.[tipoComercial] AS TC ON C.tipo_negocio_id = TC.id
                    WHERE TC.id = @nid)     
    )
    -- RETURN @table
END
GO


-- get number of employyes per department
DROP FUNCTION Proj.[udf_getDepNumAgent]
GO
CREATE FUNCTION Proj.[udf_getDepNumAgent] () ( RETURNS TABLE
AS
BEGIN
    RETURN (SELECT D.dep_number, D.localizacao, COUNT(*) 
            FROM (Proj.[agente] AS A JOIN Proj.[dept] AS D ON A.dep_no = D.dep_number) 
END
GO


-- get number of employees for SPECIFIC department
DROP FUNCTION Proj.[udf_getDepNumAgent]
GO
CREATE FUNCTION Proj.[udf_getDepNumAgent] (@depno INT) ( RETURNS TABLE
AS
BEGIN
    RETURN (SELECT D.dep_number, D.localizacao, COUNT(*) 
            FROM (Proj.[agente] AS A JOIN Proj.[dept] AS D ON A.dep_no = D.dep_number) 
            WHERE @depno = A.dep_no
END
GO


-- ver marcacoes num imovel especifico

-- fazer mais udfs por causa dos filtros


