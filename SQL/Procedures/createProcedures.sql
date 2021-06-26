-- PROCEDURES --
GO


-- DROP PROCEDURE Proj.[cp_create_pessoa]
-- GO

CREATE PROCEDURE Proj.[cp_create_pessoa]  -- criar pessoa
@nif INT, @nome VARCHAR(50), @birth DATE, @email VARCHAR(50), @morada VARCHAR(50), @num_tlm INT, @password VARCHAR(64)
AS 
DECLARE @pwd VARBINARY(64)
SET @pwd = (SELECT ENCRYPTBYPASSPHRASE('**********', @password))
BEGIN TRAN
BEGIN TRY
	IF NOT EXISTS(SELECT nif  FROM p5g5.Proj.[pessoa] WHERE nif=@nif)	-- se n existe pessoa c esse nif, adciona
		INSERT INTO p5g5.Proj.[pessoa] VALUES (@nif, @nome, @birth, @morada, @email, @num_tlm, @pwd)
	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
	RAISERROR('Couldnt create pessoa', 16, 1)
END CATCH
GO


-- DROP PROCEDURE Proj.[cp_create_agente]
-- GO

CREATE PROCEDURE Proj.[cp_create_agente]       -- criar agente
@agente_nif INT, @dep_no INT
AS	
DECLARE @num_agente INT -- num de agente é incrementado para cada agente criado, começando no 1 até n
SET @num_agente = ((SELECT COUNT(*) FROM p5g5.Proj.[agente]) + 1)
BEGIN TRAN
BEGIN TRY
		-- se ainda nao está na tabela de agente, adiciona
		IF NOT EXISTS(SELECT agente_nif FROM p5g5.Proj.[agente] WHERE agente_nif = @agente_nif)
			INSERT INTO p5g5.Proj.[agente] VALUES (@agente_nif, @num_agente, @dep_no)
		COMMIT TRAN	
END TRY	
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
	RAISERROR('Couldnt create agente', 16, 1)
END CATCH
GO

-- DROP PROCEDURE Proj.[cp__add_imovel_habitacional];
-- GO

CREATE PROCEDURE Proj.[cp_add_imovel_habitacional] -- criar e adicionar a imovel, habitacional, proprietario e negocio
    @preco INT, @localizacao VARCHAR(50), @ano_construcao INT, @area_total INT, @area_util INT, @proprietario_nif INT, 
	@num_quartos INT, @wcs INT, @habitacional_id INT, @negocio_id INT
AS
BEGIN
BEGIN TRANSACTION
BEGIN TRY
	SET NOCOUNT ON
    IF EXISTS(SELECT nif FROM p5g5.Proj.[pessoa] WHERE nif=@proprietario_nif) -- se o nif existe
	BEGIN
		-- se o nif_prop n existe
		IF NOT EXISTS(SELECT proprietario_nif FROM p5g5.Proj.[proprietario] WHERE proprietario_nif=@proprietario_nif)
		BEGIN
			DECLARE @agente_nif INT -- gerar agente aleatorio entre os que existem
			SET @agente_nif = (SELECT TOP 1 agente_nif FROM p5g5.Proj.[agente] ORDER BY NEWID())
                
			-- se ainda nao está na tabela de proprietarios, adiciona
			INSERT INTO p5g5.Proj.[proprietario] VALUES (@proprietario_nif, @agente_nif)
		END

		DECLARE @imovel_codigo VARCHAR(5) -- geração de um codigo random
		SET @imovel_codigo = (SELECT p5g5.Proj.[udf_createImovelCode]())

		DECLARE @referencia VARCHAR(9) -- gerar referencia para negocio
		SET @referencia = (SELECT p5g5.Proj.[udf_createRefCode]())

		-- se nao for um imovel repetido, adiciona a tabela imovel
		IF NOT EXISTS(SELECT localizacao FROM p5g5.Proj.[imovel] WHERE localizacao=@localizacao) 
			INSERT INTO p5g5.Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif)
			VALUES(@imovel_codigo, @preco, @localizacao, @ano_construcao, @area_total, @area_util, @proprietario_nif)

		-- add tabela habitacional
		INSERT INTO p5g5.Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id)
		VALUES(@imovel_codigo, @num_quartos, @wcs, @habitacional_id)
	
		-- add tabela negocio
		INSERT INTO p5g5.Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id)
		VALUES(@referencia, @imovel_codigo, @negocio_id) 
		END
		COMMIT TRANSACTION
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
	RAISERROR('Couldnt add imovel habitacional', 16, 1)
END CATCH
END
GO

-- DROP PROCEDURE Proj.[cp__add_imovel_comercial];
-- GO

CREATE PROCEDURE Proj.[cp_add_imovel_comercial] -- criar e adicionar a imovel, comercial, proprietario e negocio
    @preco INT, @localizacao VARCHAR(50), @ano_construcao INT, @area_total INT, @area_util INT, @proprietario_nif INT, 
	@estacionamento BIT, @comercial_id INT, @negocio_id INT
AS
BEGIN
BEGIN TRANSACTION
BEGIN TRY
	SET NOCOUNT ON
	IF EXISTS(SELECT nif FROM p5g5.Proj.[pessoa] WHERE nif=@proprietario_nif) -- se o nif existe
	BEGIN
		-- se o nif_prop n existe
		IF NOT EXISTS(SELECT proprietario_nif FROM p5g5.Proj.[proprietario] WHERE proprietario_nif=@proprietario_nif)
		BEGIN
			DECLARE @agente_nif INT -- gerar agente aleatorio entre os que existem
			SET @agente_nif = (SELECT TOP 1 agente_nif FROM p5g5.Proj.[agente] ORDER BY NEWID())
				
			-- se ainda nao está na tabela de proprietarios, adiciona
			INSERT INTO p5g5.Proj.[proprietario] VALUES (@proprietario_nif, @agente_nif)
        END
		
		DECLARE @imovel_codigo VARCHAR(5) -- geração de um codigo random
		SET @imovel_codigo = (SELECT p5g5.Proj.[udf_createImovelCode]())

		DECLARE @referencia VARCHAR(9) -- gerar referencia para negocio
		SET @referencia = (SELECT p5g5.Proj.[udf_createRefCode]())

		-- se nao for um imovel repetido, adiciona a tabela imovel
		IF NOT EXISTS(SELECT localizacao FROM p5g5.Proj.[imovel] WHERE localizacao=@localizacao) 
			INSERT INTO p5g5.Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif)
			VALUES(@imovel_codigo, @preco, @localizacao, @ano_construcao, @area_total, @area_util, @proprietario_nif)

		-- add comercial
		INSERT INTO p5g5.Proj.comercial (imovel_codigo, estacionamento, tipo_comercial_id)
		VALUES(@imovel_codigo, @estacionamento, @comercial_id)

		-- add tabela negocio
		INSERT INTO p5g5.Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id)
		VALUES(@referencia, @imovel_codigo, @negocio_id)
	END
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
	RAISERROR('Couldnt add imovel comercial', 16, 1)
END CATCH
END
GO


-- DROP PROCEDURE Proj.[cp__add_proposta];
-- GO

CREATE PROCEDURE Proj.[cp_add_proposta] -- criar proposta e adiciona interessado
    @valor INT, @interessado_nif INT, @imovel_codigo VARCHAR(5)
AS
BEGIN
BEGIN TRANSACTION
BEGIN TRY
	SET NOCOUNT ON
	IF EXISTS(SELECT nif FROM p5g5.Proj.[pessoa] WHERE nif=@interessado_nif) -- se o nif existe
    BEGIN
		IF NOT EXISTS(SELECT interessado_nif FROM p5g5.Proj.[interessado] WHERE interessado_nif=@interessado_nif) -- se o int_nif nao existe
			-- criar interessado
			INSERT INTO p5g5.Proj.[interessado] VALUES (@interessado_nif)
		
		DECLARE @proposta_codigo VARCHAR(5) -- criar codigo da proposta random
		SET @proposta_codigo = (SELECT p5g5.Proj.[udf_createPropostaCode]())

		--adicionar a proposta
		INSERT INTO p5g5.Proj.[proposta] (proposta_codigo, valor, interessado_nif, imovel_codigo)
		VALUES(@proposta_codigo, @valor, @interessado_nif, @imovel_codigo) 
	
	END
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
	RAISERROR('Couldnt add proposta', 16, 1)
END CATCH
END
GO

-- dps da venda do imovel DEL da tabela [imovel] e adiciona à tabela [vendido]
--DROP PROCEDURE Proj.[cp_update_imovel];
--GO

CREATE PROCEDURE Proj.[cp_update_imovel]
	@v_imovel_codigo VARCHAR(5)
AS
BEGIN
	DECLARE @v_preco INT, @v_localizacao VARCHAR(50), @v_ano_construcao INT, @v_area_total INT, 
		@v_area_util INT, @v_proprietario_nif INT, @v_proposta_codigo VARCHAR(5), @v_valor INT, @v_interessado_nif INT
BEGIN TRAN
BEGIN TRY
	SET NOCOUNT ON
	IF EXISTS(SELECT P.imovel_codigo FROM p5g5.Proj.[imovel] AS I JOIN p5g5.Proj.[proposta] AS P ON I.imovel_codigo=P.imovel_codigo
					WHERE P.imovel_codigo=@v_imovel_codigo) --se existe imovel
	BEGIN
		SELECT @v_preco=preco, @v_localizacao=localizacao, @v_ano_construcao=ano_construcao, 
					@v_area_total=area_total, @v_area_util=area_util, @v_proprietario_nif=proprietario_nif
		FROM p5g5.Proj.[imovel] WHERE imovel_codigo=@v_imovel_codigo

		SELECT @v_proposta_codigo=proposta_codigo, @v_valor=valor, @v_interessado_nif=interessado_nif
		FROM p5g5.Proj.[proposta] WHERE imovel_codigo=@v_imovel_codigo

		INSERT INTO p5g5.Proj.[vendido] (v_imovel_codigo, v_preco, v_localizacao, v_ano_construcao, v_area_total, v_area_util, v_proprietario_nif, v_proposta_codigo, v_valor, v_interessado_nif)
		VALUES(@v_imovel_codigo, @v_preco, @v_localizacao, @v_ano_construcao, @v_area_total, @v_area_util, @v_proprietario_nif, @v_proposta_codigo, @v_valor, @v_interessado_nif)
				
		-- eliminar de todas as tabelas e das suas dependencias
		DELETE FROM Proj.temAddOn WHERE habitacional_codigo=@v_imovel_codigo
		DELETE FROM Proj.habitacional  WHERE imovel_codigo=@v_imovel_codigo
		DELETE FROM Proj.comercial WHERE imovel_codigo=@v_imovel_codigo
		DELETE FROM Proj.proposta WHERE imovel_codigo=@v_imovel_codigo
		DELETE FROM Proj.marcacao WHERE imovel_codigo=@v_imovel_codigo
		DELETE FROM Proj.negocio WHERE imovel_codigo=@v_imovel_codigo
		DELETE FROM Proj.imovel WHERE imovel_codigo=@v_imovel_codigo
		END
		COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
	RAISERROR('Couldnt update imovel...', 16, 1)
END CATCH
END
GO


--DROP PROCEDURE Proj.[cp_delete_user];
--GO

CREATE PROCEDURE Proj.[cp_delete_user] -- eliminar conta de pessoa
	@nif INT
AS
BEGIN
	BEGIN TRY
		IF EXISTS(SELECT nif FROM p5g5.Proj.[pessoa] WHERE nif=@nif) -- se o nif existe
		
		BEGIN TRAN
			DELETE H FROM Proj.[habitacional] H INNER JOIN Proj.[imovel] I ON H.imovel_codigo=I.imovel_codigo WHERE I.proprietario_nif=@nif
			DELETE C FROM Proj.[comercial] C JOIN Proj.[imovel] I ON C.imovel_codigo=I.imovel_codigo WHERE I.proprietario_nif=@nif
			DELETE N FROM Proj.[negocio] N INNER JOIN Proj.[imovel] I ON N.imovel_codigo=I.imovel_codigo WHERE I.proprietario_nif=@nif
			DELETE FROM Proj.[marcacao] WHERE interessado_nif=@nif
			DELETE FROM Proj.[proposta] WHERE interessado_nif=@nif
			DELETE FROM Proj.[imovel] WHERE proprietario_nif=@nif
			DELETE FROM Proj.[interessado] WHERE interessado_nif=@nif
			DELETE FROM Proj.[proprietario] WHERE proprietario_nif=@nif
			DELETE FROM Proj.[vendido] WHERE v_proprietario_nif=@nif
			DELETE FROM Proj.[pessoa] WHERE nif=@nif
		COMMIT TRAN

	END TRY
    BEGIN CATCH
		ROLLBACK TRANSACTION
		RAISERROR('Couldnt delete User...', 16, 1)
    END CATCH
END
GO
