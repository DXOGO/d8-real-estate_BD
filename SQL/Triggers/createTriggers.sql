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
		IF ((SELECT Proj.[udf_validateEmail](@email)) > 0)  -- existe na base de dados pessoa c esse email
			RAISERROR('Email is already registered!', 16, 1)
		ELSE
			INSERT INTO Proj.[pessoa](nif, nome, birth, endereco, email, num_tlm, [password])
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
	DECLARE @data_marc DATE, @intnif INT, @cod VARCHAR(5);

	SELECT @data_marc=data_marc, @intnif=nif, @cod=imovel_codigo FROM insterted;
	IF NOT EXISTS (SELECT imovel_codigo FROM Proj.[imovel] WHERE @cod=imovel_codigo)
		RAISERROR('Imovel doesnt exist', 16, 1)
	ELSE IF (SELECT data_marcacao FROM Proj.[marcacao] JOIN Proj.[imovel] ON codigo_imovel= @cod WHERE data_marcacao=@data_marc) = 1
		RAISERROR('Imovel already has appointment that day', 16, 1)
	ELSE IF (SELECT data_marcacao FROM Proj.[marcacao]) > GETDATE()
		INSERT INTO Proj.[marcacao](data_marc, nif, imovel_codigo)
		VALUES (@data_marc, @intnif, @cod)
	ELSE
		RAISERROR('Impossible date', 16, 1)
END
GO




-- FAZER INDEXES
-- FAZER TRANSACOES