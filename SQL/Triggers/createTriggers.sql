-- Triggers


DROP TRIGGER Proj.[trigger_pessoa]

CREATE TRIGGER Proj.[trigger_pessoa] ON Proj.[pessoa]
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @nif INT(9);
    DECLARE @nome VARCHAR(50);
    DECLARE @birth DATE;
    DECLARE @endereco VARCHAR(50);
    DECLARE @email VARCHAR(50);
    DECLARE @num_tlm INT(9);
    
    SELECT @nif=nif, @nome=nome, @birth=birth, @endereco=endereco, @email=email, @num_tlm=num_tlm;
    IF ((SELECT Proj.[udf_validadeNIF](@nif)) > 0)  -- existe na base de dados pessoa c esse nif
        RAISEERROR('Person is already registered!', 16, 1)
    ELSE
    INSERT INTO Proj.[pessoa](nif, nome, birth, endereco, email, num_tlm)
            VALUES (@nif, @nome, @birth, @endereco, @email, @num_tlm)
END
GO
