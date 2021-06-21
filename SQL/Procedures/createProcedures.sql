-- PROCEDURES --
GO

-- DROP PROCEDURE Proj.[cp_create_agente]
-- GO

CREATE PROCEDURE Proj.[cp_create_agente]       -- criar agente
@nif INT, @nome VARCHAR(50), @birth DATE, @email VARCHAR(50), @endereco VARCHAR(50), @num_agente INT, @dep_no INT, @num_tlm INT, @password VARBINARY(64), @responseMessage NVARCHAR(250) OUTPUT
AS 
	DECLARE @pwd VARBINARY(64)
	SET @pwd = (SELECT ENCRYPTBYPASSPHRASE('**********', @password))
	BEGIN
		BEGIN TRY
			-- se a pessoa já for agente, então já existe na tabela pessoa e não é preciso inserir
			IF NOT EXISTS(SELECT * FROM p5g5.Proj.[agente] WHERE agente_nif = @nif)
				INSERT INTO p5g5.Proj.[pessoa] VALUES (@nif, @nome, @birth, @endereco, @email, @num_tlm, @pwd)
			
			INSERT INTO p5g5.Proj.[agente] VALUES (@nif, @num_agente, @dep_no)
			SET @responseMessage='Success'		
		END TRY	
		BEGIN CATCH
			SET @responseMessage='Failed'
		END CATCH
	END
GO


CREATE PROCEDURE Proj.[cp_create_interessado]  -- criar interessado
@nif INT, @nome VARCHAR(50), @birth DATE, @email VARCHAR(50), @morada VARCHAR(50), @num_tlm INT, @password VARBINARY(64), @responseMessage NVARCHAR(250) OUTPUT
AS 
	DECLARE @pwd VARBINARY(64)
	SET @pwd = (SELECT ENCRYPTBYPASSPHRASE('**********', @password))	
	BEGIN
		BEGIN TRY
			-- se a pessoa já for proprietario, então já existe na tabela pessoa e não é preciso inserir
			IF NOT EXISTS(SELECT proprietario_nif FROM p5g5.Proj.[proprietario] WHERE proprietario_nif = @nif)
				INSERT INTO p5g5.Proj.[pessoa] VALUES (@nif, @nome, @birth, @morada, @email, @num_tlm, @pwd)
			
			INSERT INTO p5g5.Proj.[interessado] VALUES (@nif)
			SET @responseMessage='Success'		
		END TRY	
		BEGIN CATCH
			SET @responseMessage='Failed'
		END CATCH
	END
GO


CREATE PROCEDURE Proj.[cp_create_proprietario] -- criar proprietarios

@nif INT, @nome VARCHAR(50), @birth DATE, @email VARCHAR(50), @morada VARCHAR(50), @num_tlm INT, @agente_nif INT,  @password VARBINARY(64), @responseMessage NVARCHAR(250) OUTPUT
AS 
	DECLARE @pwd VARBINARY(64)
	SET @pwd = (SELECT ENCRYPTBYPASSPHRASE('**********', @password))
	BEGIN
		BEGIN TRY
			-- se a pessoa já for proprietario, então já existe na tabela pessoa e não é preciso inserir
			IF NOT EXISTS(SELECT interessado_nif FROM p5g5.Proj.[interessado] WHERE interessado_nif = @nif)
				INSERT INTO p5g5.Proj.[pessoa] VALUES (@nif, @nome, @birth, @morada, @email, @num_tlm, @pwd)
			INSERT INTO p5g5.Proj.[proprietario] VALUES (@nif, @agente_nif)
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

CREATE PROCEDURE Proj.[cp_add_imovel]
    @preco INT, @localizacao VARCHAR(50), @ano_construcao INT, @area_total INT,
	@area_util INT, @proprietario_nif INT,  @responseMessage NVARCHAR(250) OUTPUT
AS
BEGIN
    SET NOCOUNT ON
	DECLARE @imovel_codigo VARCHAR(5)
	SET @imovel_codigo = (SELECT p5g5.Proj.[udf_createImovelCode]())
    BEGIN TRY
        IF EXISTS(SELECT proprietario_nif FROM p5g5.[Proj].proprietario WHERE proprietario_nif=@proprietario_nif)
            BEGIN
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

CREATE PROCEDURE Proj.[cp_add_proposta]
    @preco INT, @localizacao VARCHAR(50), @ano_construcao INT, @area_total INT, @area_util INT, @proprietario_nif INT,  @responseMessage NVARCHAR(250) OUTPUT
AS
BEGIN
    SET NOCOUNT ON
    BEGIN TRY
        IF EXISTS(SELECT proprietario_nif FROM p5g5.[Proj].proprietario WHERE proprietario_nif=@proprietario_nif)
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


-- inserir mais procedures caso sejam inseridos mais departamenos, agentes, imoveis, etc...
-- fazer transaçoes