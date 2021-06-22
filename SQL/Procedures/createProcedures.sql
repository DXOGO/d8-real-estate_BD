-- PROCEDURES --
GO

-- DROP PROCEDURE Proj.[cp_create_agente]
-- GO

CREATE PROCEDURE Proj.[cp_create_agente]       -- criar agente
@agente_nif INT, @dep_no INT, @responseMessage NVARCHAR(250) OUTPUT
AS 
	DECLARE @num_agente INT
	-- num de agente é incrementado para cada agente criado, começando no 1 até n
	SET @num_agente = ((SELECT COUNT(*) FROM p5g5.Proj.[agente]) + 1)
	BEGIN
		BEGIN TRY
			-- se ainda nao está na tabela de agente, adiciona
			IF NOT EXISTS(SELECT agente_nif FROM p5g5.Proj.[agente] WHERE agente_nif = @agente_nif)
				INSERT INTO p5g5.Proj.[agente] VALUES (@agente_nif, @num_agente, @dep_no)
			SET @responseMessage='Success'		
		END TRY	
		BEGIN CATCH
			SET @responseMessage='Failed'
		END CATCH
	END
GO


CREATE PROCEDURE Proj.[cp_create_interessado]  -- criar interessado
@interessado_nif INT, @responseMessage NVARCHAR(250) OUTPUT
AS 	
	BEGIN
		BEGIN TRY
			-- se ainda nao está na tabela de interessado, adiciona
			IF NOT EXISTS(SELECT interessado_nif FROM p5g5.Proj.[interessado] WHERE interessado_nif = @interessado_nif)
				INSERT INTO p5g5.Proj.[interessado] VALUES (@interessado_nif)
			SET @responseMessage='Success'		
		END TRY
		BEGIN CATCH
			SET @responseMessage='Failed'
		END CATCH
	END
GO


CREATE PROCEDURE Proj.[cp_create_proprietario] -- criar proprietarios
@proprietario_nif INT,  @responseMessage NVARCHAR(250) OUTPUT
AS 
	DECLARE @agente_nif INT
	-- select random agente para tratar do proprietario
	SET @agente_nif = (SELECT TOP 1 agente_nif FROM p5g5.Proj.[agente] ORDER BY NEWID())
	BEGIN
		BEGIN TRY
			-- se ainda nao está na tabela de proprietarios, adiciona
			IF NOT EXISTS(SELECT proprietario_nif FROM p5g5.Proj.[proprietario] WHERE proprietario_nif = @proprietario_nif)
				INSERT INTO p5g5.Proj.[proprietario] VALUES (@proprietario_nif, @agente_nif)
			SET @responseMessage='Success'		
		END TRY
		BEGIN CATCH
			SET @responseMessage='Failed'
		END CATCH
	END
GO




CREATE PROCEDURE Proj.[cp_create_pessoa]  -- criar pessoa
@nif INT, @nome VARCHAR(50), @birth DATE, @email VARCHAR(50), @morada VARCHAR(50), @num_tlm INT, @password VARBINARY(64), @responseMessage NVARCHAR(250) OUTPUT
AS 
	DECLARE @pwd VARBINARY(64)
	SET @pwd = (SELECT ENCRYPTBYPASSPHRASE('**********', @password))
	BEGIN TRY
		IF NOT EXISTS(SELECT nif  FROM p5g5.Proj.[pessoa] WHERE nif=@nif)	-- se n existe pessoa c esse nif, adciona
			INSERT INTO p5g5.Proj.[pessoa] VALUES (@nif, @nome, @birth, @morada, @email, @num_tlm, @pwd)
			SET @responseMessage='Success'
	END TRY
	BEGIN CATCH
			SET @responseMessage='Failed'
	END CATCH

GO

-- DROP PROCEDURE Proj.[cp__add_imovel];
-- GO

CREATE PROCEDURE Proj.[cp_add_imovel] -- criar imovel
    @preco INT, @localizacao VARCHAR(50), @ano_construcao INT, @area_total INT,
	@area_util INT, @nif INT,  @responseMessage NVARCHAR(250) OUTPUT
AS
BEGIN
    SET NOCOUNT ON
	DECLARE @imovel_codigo VARCHAR(5)
	SET @imovel_codigo = (SELECT p5g5.Proj.[udf_createImovelCode]())
    BEGIN TRY
        IF EXISTS(SELECT nif FROM p5g5.[Proj].pessoa WHERE nif=@nif) -- se o nif existe
            BEGIN
				EXEC Proj.[cp_create_proprietario]
                INSERT INTO p5g5.[Proj].imovel (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif)
                VALUES(@imovel_codigo, @preco, @localizacao, @ano_construcao, @area_total, @area_util, @proprietario_nif) 
                SET @responseMessage='Success'
            END
        ELSE
            SET @responseMessage='Permition denied'
    END TRY
    BEGIN CATCH
        SET @responseMessage='Failed'
    END CATCH
END
GO 


-- DROP PROCEDURE Proj.[cp__add_proposta];
-- GO

CREATE PROCEDURE Proj.[cp_add_proposta] -- criar proposta
    @valor INT, @interessado_nif INT, @imovel_codigo VARCHAR(5), @responseMessage NVARCHAR(250) OUTPUT
AS
BEGIN
    SET NOCOUNT ON
    BEGIN TRY
        IF EXISTS(SELECT interessado_nif FROM p5g5.[Proj].interessado WHERE interessado_nif=@interessado_nif)
            BEGIN
                INSERT INTO p5g5.[Proj].imovel (preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif)
                VALUES(@preco, @localizacao, @ano_construcao, @area_total, @area_util, @proprietario_nif) 
                SET @responseMessage='Success'
            END
        ELSE
            SET @responseMessage='Permition denied'
    END TRY
    BEGIN CATCH
        SET @responseMessage='Failed'
    END CATCH
END
GO 



-- inserir mais procedures caso sejam inseridos mais departamentos, agentes, imoveis, etc...
-- fazer transaçoes