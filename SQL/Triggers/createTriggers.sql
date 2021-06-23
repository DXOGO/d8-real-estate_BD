GO
-- Triggers

-- verificar se email ja existe
-- DROP TRIGGER Proj.[trigger_pessoa]
-- GO

CREATE TRIGGER Proj.[trigger_register_pessoa] ON Proj.[pessoa] --registar pessoa nova
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @nif INT, @nome VARCHAR(50), @birth DATE, @endereco VARCHAR(50), @email VARCHAR(50), @num_tlm INT, @password VARCHAR(50);
    
    SELECT @nif=nif, @nome=nome, @birth=birth, @endereco=endereco, @email=email, @num_tlm=num_tlm, @password=CONVERT(VARCHAR(20), DECRYPTBYPASSPHRASE('**********',[password])) FROM inserted;
		IF ((SELECT p5g5.Proj.[udf_validateEmail](@email)) > 0)  -- existe na base de dados pessoa c esse email
			RAISERROR('Email is already registered!', 16, 1)
		ELSE
			INSERT INTO p5g5.Proj.[pessoa](nif, nome, birth, endereco, email, num_tlm, [password])
			VALUES (@nif, @nome, @birth, @endereco, @email, @num_tlm, ENCRYPTBYPASSPHRASE('**********', @password))
END
GO

-- ver se já existe marcacao no dia escolhido pelo interessado
-- DROP TRIGGER Proj.[trigger_marcacao]
-- GO

CREATE TRIGGER Proj.[trigger_marcacao] ON Proj.[marcacao]
INSTEAD OF INSERT
AS
BEGIN
	DECLARE @data_marc DATE, @interessado_nif INT, @imovel_codigo VARCHAR(5), @now DATE, @responseMessage NVARCHAR(250)
	SET @now = CAST(DATEADD(DAY, 1, GETDATE()) AS DATE)
	SET @responseMessage='Success'

	SELECT @data_marc=data_marc, @interessado_nif=interessado_nif, @imovel_codigo=imovel_codigo FROM INSERTED;
	-- checkar se data é valida
	IF NOT EXISTS(SELECT data_marc FROM p5g5.Proj.[marcacao] JOIN p5g5.Proj.[imovel] AS I ON I.imovel_codigo= @imovel_codigo WHERE data_marc=@data_marc)
	BEGIN
		-- sverificar se a data é maior q agora
		IF @data_marc > @now
		BEGIN
			-- criar interessado se ele ainda n ta na tablea
		IF NOT EXISTS(SELECT interessado_nif FROM p5g5.Proj.[interessado] WHERE interessado_nif = @interessado_nif)
			EXEC Proj.[cp_create_interessado] @interessado_nif, @responseMessage OUTPUT

			IF @responseMessage = 'Success'
				INSERT INTO Proj.[marcacao](data_marc, interessado_nif, imovel_codigo)
							VALUES (@data_marc, @interessado_nif, @imovel_codigo)
				SET @responseMessage='Success'
		END
		ELSE
		RAISERROR('Please select a future date', 16, 1)
	END
	ELSE
		RAISERROR('Impossible date', 16, 1)
END
GO


--CREATE TRIGGER Proj.[trigger_addProprietario] ON Proj.[imovel]
--INSTEAD OF INSERT
--AS
--BEGIN
--	DECLARE @proprietario_nif INT, @preco INT, @localizacao VARCHAR(50), @ano_construcao INT, @area_total INT, @area_util INT, @responseMessage NVARCHAR(250)
--	SET @responseMessage='Success'
--	SELECT @proprietario_nif=proprietario_nif FROM INSERTED;

--	IF NOT EXISTS (SELECT * FROM p5g5.Proj.[proprietario] WHERE proprietario_nif = @proprietario_nif)
--		EXEC Proj.[cp_create_proprietario] @proprietario_nif, @responseMessage OUTPUT
--	IF @responseMessage = 'Success'
--		SELECT @preco=preco, @localizacao=localizacao, @ano_construcao=ano_construcao, @area_total=area_total, @area_util=area_util FROM INSERTED
--		INSERT INTO p5g5.[Proj].imovel (preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif)
--               VALUES(@preco, @localizacao, @ano_construcao, @area_total, @area_util, @proprietario_nif)
--        SET @responseMessage='Success'
--END
--GO

--CREATE TRIGGER Proj.[trigger_addInteressado] ON Proj.[proposta]
--INSTEAD OF INSERT
--AS
--BEGIN
--	DECLARE @interessado_nif INT, @valor INT, @imovel_codigo VARCHAR(5), @responseMessage NVARCHAR(250)
--	SET @responseMessage='Success'
--	SELECT @interessado_nif = interessado_nif FROM INSERTED;

--	IF NOT EXISTS (SELECT * FROM p5g5.Proj.[interessado] WHERE interessado_nif = @interessado_nif)
--		EXEC Proj.[cp_create_interessado] @interessado_nif, @responseMessage OUTPUT
--	IF @responseMessage = 'Success'
--		SELECT @valor=valor, @imovel_codigo=imovel_codigo FROM INSERTED
--		EXEC Proj.[cp_add_proposta] @valor, @imovel_codigo, @interessado_nif, @responseMessage OUTPUT
--END
--GO

-- FAZER MAIS TRIGGERS FDSAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA 

-- FAZER INDEXES
-- FAZER TRANSACOES