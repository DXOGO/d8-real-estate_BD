GO
-- Triggers

-- verificar se email ja existe
-- DROP TRIGGER Proj.[trigger_register_pessoa]
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
    -- checkar se data é valida
    BEGIN TRY
        IF NOT EXISTS(SELECT data_marc FROM p5g5.Proj.[marcacao] JOIN p5g5.Proj.[imovel] AS I ON I.imovel_codigo= @imovel_codigo WHERE data_marc=@data_marc)
        BEGIN
            IF @data_marc > @now -- verificar se a data é maior q agora
            BEGIN TRAN
                -- criar interessado se ele ainda n ta na tablea
                IF NOT EXISTS(SELECT interessado_nif FROM p5g5.Proj.[interessado] WHERE interessado_nif = @interessado_nif)
                    -- criar interessado
                    INSERT INTO p5g5.Proj.[interessado] VALUES (@interessado_nif)

                INSERT INTO Proj.[marcacao](data_marc, interessado_nif, imovel_codigo)
                            VALUES (@data_marc, @interessado_nif, @imovel_codigo)
            COMMIT TRAN
            ROLLBACK TRAN
            RAISERROR('Imovel ja tem proposta nesse dia...', 16, 1)
        END
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION
        RAISERROR('Couldnt add proposta...', 16, 1)
    END CATCH
END
GO
   

-- DROP TRIGGER Proj.[trigger_addon] 
-- GO

CREATE TRIGGER  Proj.[trigger_addon] ON Proj.[temAddOn]
INSTEAD OF INSERT
AS
BEGIN
	DECLARE @quantidade INT, @habitacional_codigo VARCHAR(5), @add_on_id INT
	SELECT @quantidade=quantidade, @habitacional_codigo=habitacional_codigo, @add_on_id=add_on_id FROM INSERTED
	
	IF EXISTS(SELECT I.imovel_codigo FROM p5g5.Proj.[imovel] AS I JOIN p5g5.Proj.[habitacional] AS H ON I.imovel_codigo=H.imovel_codigo 
					WHERE I.imovel_codigo=@habitacional_codigo)	-- se imovel existe

		INSERT INTO Proj.[temAddOn](quantidade, habitacional_codigo, add_on_id)
			VALUES(@quantidade, @habitacional_codigo, @add_on_id)
	ELSE
		RAISERROR('Couldnt add add on..', 16, 1)
END
GO
