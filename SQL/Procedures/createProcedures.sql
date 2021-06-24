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
			-IF NOT EXISTS(SELECT proprietario_nif FROM p5g5.Proj.[proprietario] WHERE proprietario_nif = @proprietario_nif)
				INSERT INTO p5g5.Proj.[proprietario] VALUES (@proprietario_nif, @agente_nif)
			SET @responseMessage='Success'		
		END TRY
		BEGIN CATCH
			SET @responseMessage='Failed'
		END CATCH
	END
GO




CREATE PROCEDURE Proj.[cp_create_pessoa]  -- criar pessoa
@nif INT, @nome VARCHAR(50), @birth DATE, @email VARCHAR(50), @morada VARCHAR(50), @num_tlm INT, @password VARCHAR(64), @responseMessage NVARCHAR(250) OUTPUT
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

CREATE PROCEDURE Proj.[cp_add_imovel] -- criar imovel e adicionar proprietario
    @preco INT, @localizacao VARCHAR(50), @ano_construcao INT, @area_total INT,
	@area_util INT, @proprietario_nif INT,  @responseMessage NVARCHAR(250) OUTPUT
AS
BEGIN
    SET NOCOUNT ON
	DECLARE @imovel_codigo VARCHAR(5) 
	SET @responseMessage='Success'
	SET @imovel_codigo = (SELECT p5g5.Proj.[udf_createImovelCode]())
   BEGIN TRY
        IF EXISTS(SELECT nif FROM p5g5.Proj.[pessoa] WHERE nif=@proprietario_nif) -- se o nif existe
            BEGIN
				IF NOT EXISTS(SELECT proprietario_nif FROM p5g5.Proj.[proprietario] WHERE proprietario_nif=@proprietario_nif) -- se o nif_prop n existe
					EXEC Proj.[cp_create_proprietario] @proprietario_nif, @responseMessage OUTPUT
                
				IF NOT EXISTS(SELECT localizacao FROM p5g5.Proj.[imovel] WHERE localizacao=@localizacao)
					INSERT INTO p5g5.Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif)
					VALUES(@imovel_codigo, @preco, @localizacao, @ano_construcao, @area_total, @area_util, @proprietario_nif)
					SET @responseMessage='Success'
            END
        ELSE
            SET @responseMessage='Permition denied'
    END TRY
    BEGIN CATCH
        SET @responseMessage='Failed'
    END CATCH

	--RETURN @imovel_codigo
END
GO 

CREATE PROCEDURE Proj.[cp_add_imovel_habitacional] -- criar e adicionar a imovel, habitacional, proprietario e negocio
    @preco INT, @localizacao VARCHAR(50), @ano_construcao INT, @area_total INT, @area_util INT, @proprietario_nif INT, 
	@num_quartos INT, @wcs INT, @habitacional_id INT, @negocio_id INT, @quantidade INT,  @responseMessage NVARCHAR(250) OUTPUT
AS
BEGIN
	-- add imovel e proprietario
	EXEC Proj.[cp_add_imovel] @preco, @localizacao, @ano_construcao, @area_total, @area_util, @proprietario_nif, @responseMessage
	
	DECLARE @imovel_codigo VARCHAR(5)
	SET @imovel_codigo = (SELECT p5g5.Proj.[udf_getImobCode](@proprietario_nif, @localizacao))

	-- add habitacional
	INSERT INTO p5g5.Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id)
	VALUES(@imovel_codigo, @num_quartos, @wcs, @habitacional_id)
	-- add negocio
	EXEC Proj.[cp_add_negocio] @imovel_codigo, @negocio_id, @responseMessage
END
GO 


CREATE PROCEDURE Proj.[cp_add_imovel_comercial] -- criar e adicionar a imovel, comercial, proprietario e negocio
    @preco INT, @localizacao VARCHAR(50), @ano_construcao INT, @area_total INT, @area_util INT, @proprietario_nif INT, 
	@estacionamento BIT, @comercial_id INT, @negocio_id INT,  @responseMessage NVARCHAR(250) OUTPUT
AS
BEGIN
	-- add imovel e proprietario
	EXEC Proj.[cp_add_imovel] @preco, @localizacao, @ano_construcao, @area_total, @area_util, @proprietario_nif, @responseMessage
	
	DECLARE @imovel_codigo VARCHAR(5)
	SET @imovel_codigo = (SELECT p5g5.Proj.[udf_getImobCode](@proprietario_nif, @localizacao))

	-- add comercial
	INSERT INTO p5g5.Proj.comercial (imovel_codigo, estacionamento, tipo_comercial_id)
	VALUES(@imovel_codigo, @estacionamento, @comercial_id)
	-- add negocio
	EXEC Proj.[cp_add_negocio] @imovel_codigo, @negocio_id, @responseMessage
END
GO 


-- DROP PROCEDURE Proj.[cp__add_proposta];
-- GO

CREATE PROCEDURE Proj.[cp_add_proposta] -- criar proposta e adiciona interessado
    @valor INT, @interessado_nif INT, @imovel_codigo VARCHAR(5), @responseMessage NVARCHAR(250) OUTPUT
AS
BEGIN
    SET NOCOUNT ON
	DECLARE @proposta_codigo VARCHAR(5)
	SET @responseMessage='Success'
	SET @proposta_codigo = (SELECT p5g5.Proj.[udf_createPropostaCode]())
    BEGIN TRY
		IF EXISTS(SELECT nif FROM p5g5.Proj.[pessoa] WHERE nif=@interessado_nif) -- se o nif existe
            BEGIN
				IF NOT EXISTS(SELECT interessado_nif FROM p5g5.Proj.[interessado] WHERE interessado_nif=@interessado_nif) -- se o int_nif existe
					EXEC Proj.[cp_create_interessado] @interessado_nif, @responseMessage OUTPUT
            
				INSERT INTO p5g5.Proj.[proposta] (proposta_codigo, valor, interessado_nif, imovel_codigo)
				VALUES(@proposta_codigo, @valor, @interessado_nif, @imovel_codigo) 
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

-- DROP PROCEDURE Proj.[cp__add_marcacao];
-- GO

CREATE PROCEDURE Proj.[cp_add_marcacao] -- criar marcacao e adiciona interessado
    @data_marc DATE, @interessado_nif INT, @imovel_codigo VARCHAR(5), @responseMessage NVARCHAR(250) OUTPUT
AS
BEGIN
    SET NOCOUNT ON
	DECLARE @now DATE
	SET @now = CAST(DATEADD(DAY, 1, GETDATE()) AS DATE)
	SET @responseMessage='Success'
    BEGIN TRY
		IF EXISTS(SELECT nif FROM p5g5.Proj.[pessoa] WHERE nif=@interessado_nif) -- se o nif existe
            BEGIN
				IF NOT EXISTS(SELECT interessado_nif FROM p5g5.Proj.[interessado] WHERE interessado_nif=@interessado_nif) -- se o int_nif existe
					EXEC Proj.[cp_create_interessado] @interessado_nif, @responseMessage OUTPUT
            
				INSERT INTO p5g5.Proj.[marcacao] (data_marc, interessado_nif, imovel_codigo)
				VALUES(@data_marc, @interessado_nif, @imovel_codigo) 
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


-- DROP PROCEDURE Proj.[cp__add_negocio];
-- GO

CREATE PROCEDURE Proj.[cp_add_negocio] -- criar marcacao e adiciona interessado
	@imovel_codigo VARCHAR(5), @tipo_negocio_id INT, @responseMessage NVARCHAR(250) OUTPUT
AS
BEGIN
    SET NOCOUNT ON
	DECLARE @referencia VARCHAR(9)
	SET @referencia = (SELECT p5g5.Proj.[udf_createRefCode]())
	SET @responseMessage='Success'
	BEGIN TRY
		IF EXISTS(SELECT imovel_codigo FROM p5g5.Proj.[imovel] WHERE imovel_codigo=@imovel_codigo) -- se o imovel existe
			BEGIN
				IF NOT EXISTS(SELECT imovel_codigo FROM p5g5.Proj.[negocio] WHERE imovel_codigo=@imovel_codigo)
					INSERT INTO p5g5.Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id)
					VALUES(@referencia, @imovel_codigo, @tipo_negocio_id) 
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

-- dps da venda do imovel DEL da tabela [imovel] e adiciona à tabela [vendido]
--DROP PROCEDURE Proj.cp__update_imovel;
--GO

CREATE PROCEDURE Proj.[cp_update_imovel]
	@v_imovel_codigo VARCHAR(5)
AS
BEGIN
	DECLARE @v_preco INT, @v_localizacao VARCHAR(50), @v_ano_construcao INT, @v_area_total INT, 
		@v_area_util INT, @v_proprietario_nif INT, @v_proposta_codigo VARCHAR(5), @v_valor INT, @v_interessado_nif INT

	IF EXISTS(SELECT P.imovel_codigo FROM p5g5.Proj.[imovel] AS I JOIN p5g5.Proj.[proposta] AS P ON I.imovel_codigo=P.imovel_codigo
				WHERE P.imovel_codigo=@v_imovel_codigo) --se existe imovel

		--IF EXISTS (SELECT imovel_codigo FROM p5g5.Proj.[proposta] WHERE imovel_codigo=@v_imovel_codigo) -- se existe proposta
			-- SET @v_proposta_codigo = (SELECT proposta_codigo FROM p5g5.Proj.[proposta] WHERE imovel_codigo=@imovel_codigo)
			
			SELECT @v_preco=preco, @v_localizacao=localizacao, @v_ano_construcao=ano_construcao, 
						@v_area_total=area_total, @v_area_util=area_util, @v_proprietario_nif=proprietario_nif
			FROM p5g5.Proj.[imovel] WHERE imovel_codigo=@v_imovel_codigo

			SELECT @v_proposta_codigo=proposta_codigo, @v_valor=valor, @v_interessado_nif=interessado_nif
			FROM p5g5.Proj.[proposta] WHERE imovel_codigo=@v_imovel_codigo

			INSERT INTO p5g5.Proj.[vendido] (v_imovel_codigo, v_preco, v_localizacao, v_ano_construcao, v_area_total, v_area_util, v_proprietario_nif, v_proposta_codigo, v_valor, v_interessado_nif)
			VALUES(@v_imovel_codigo, @v_preco, @v_localizacao, @v_ano_construcao, @v_area_total, @v_area_util, @v_proprietario_nif, @v_proposta_codigo, @v_valor, @v_interessado_nif)

			EXEC Proj.[delete_imovel] @v_imovel_codigo
END
GO

CREATE PROCEDURE Proj.[delete_imovel]
	@imovel_codigo VARCHAR(5)
AS
BEGIN TRANSACTION
	DELETE FROM Proj.temAddOn WHERE habitacional_codigo=@imovel_codigo
	DELETE FROM Proj.habitacional  WHERE imovel_codigo=@imovel_codigo
	DELETE FROM Proj.comercial WHERE imovel_codigo=@imovel_codigo
	DELETE FROM Proj.proposta WHERE imovel_codigo=@imovel_codigo
	DELETE FROM Proj.marcacao WHERE imovel_codigo=@imovel_codigo
	DELETE FROM Proj.negocio WHERE imovel_codigo=@imovel_codigo
	DELETE FROM Proj.imovel WHERE imovel_codigo=@imovel_codigo
COMMIT
GO

-- inserir mais procedures caso sejam inseridos mais departamentos, agentes, imoveis, etc...
-- fazer transaçoes