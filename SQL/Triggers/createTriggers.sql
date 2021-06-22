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
	DECLARE @data_marc DATE, @interessado_nif INT, @imovel_codigo VARCHAR(5), @now DATE
	SET @now = CAST(DATEADD(DAY, 1, GETDATE()) AS DATE)

	SELECT @data_marc=data_marc, @interessado_nif=interessado_nif, @imovel_codigo=imovel_codigo FROM INSERTED;
	-- se imovel n existe
	IF NOT EXISTS (SELECT imovel_codigo FROM Proj.[imovel] WHERE @imovel_codigo=imovel_codigo)
		RAISERROR('Imovel doesnt exist', 16, 1)
	-- se já ha marcacao p esse imovel nesse dia
	ELSE IF (SELECT COUNT(*) FROM p5g5.Proj.[marcacao] JOIN p5g5.Proj.[imovel] AS I ON I.imovel_codigo= @imovel_codigo WHERE data_marc=@data_marc) = 1
		RAISERROR('Imovel already has appointment that day', 16, 1)
	-- senao, schedule para o dia
	ELSE IF (SELECT data_marc FROM p5g5.Proj.[marcacao] WHERE @data_marc=data_marc) > @now
		INSERT INTO Proj.[marcacao](data_marc, interessado_nif, imovel_codigo)
		VALUES (@data_marc, @interessado_nif, @imovel_codigo)
	ELSE
		RAISERROR('Impossible date', 16, 1)
END
GO


-- FAZER MAIS TRIGGERS FDSAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA 

-- FAZER INDEXES
-- FAZER TRANSACOES