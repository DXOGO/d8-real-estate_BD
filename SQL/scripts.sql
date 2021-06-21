USE [p5g5]
GO
/****** Object:  Schema [Proj]    Script Date: 18/06/2021 23:20:57 ******/
CREATE SCHEMA [Proj]
GO
/****** Object:  UserDefinedFunction [Proj].[udf_validateEmail]    Script Date: 18/06/2021 23:20:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [Proj].[udf_validateEmail](@email VARCHAR(50)) RETURNS INT
AS
BEGIN
	IF EXISTS(SELECT * FROM Proj.[Pessoa] AS P WHERE P.email = @email)
		RETURN 1;
	RETURN 0;
END
GO
/****** Object:  Table [Proj].[imovel]    Script Date: 18/06/2021 23:20:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Proj].[imovel](
	[imovel_codigo] [varchar](5) NOT NULL,
	[preco] [int] NOT NULL,
	[localizacao] [varchar](50) NOT NULL,
	[ano_construcao] [int] NOT NULL,
	[area_total] [int] NOT NULL,
	[area_util] [int] NOT NULL,
	[proprietario_nif] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[imovel_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [Proj].[view_getAllImob]    Script Date: 18/06/2021 23:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Proj].[view_getAllImob]
AS
    SELECT preco, localizacao, ano_construcao, area_total, area_util
    FROM Proj.[imovel];
GO
/****** Object:  Table [Proj].[habitacional]    Script Date: 18/06/2021 23:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Proj].[habitacional](
	[imovel_codigo] [varchar](5) NOT NULL,
	[num_quartos] [int] NOT NULL,
	[wcs] [int] NOT NULL,
	[tipo_habitacional_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[imovel_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [Proj].[view_getHabitacional]    Script Date: 18/06/2021 23:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [Proj].[view_getHabitacional]
AS
    SELECT I.preco, I.localizacao, I.ano_construcao, I.area_total, I.area_util, H.num_quartos, H.wcs
    FROM Proj.[imovel] AS I JOIN Proj.[habitacional] AS H 
    ON I.imovel_codigo = H.imovel_codigo
GO
/****** Object:  UserDefinedFunction [Proj].[udf_getImobNegocio]    Script Date: 18/06/2021 23:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [Proj].[udf_getImobNegocio] (@nid INT) RETURNS TABLE
AS
    -- IF @nid > 3 OR @nid < 0
    --     @nid = 1;    -- default value case if user input isn't valid

    -- DECLARE @preco AS INT, @localizacao AS VARCHAR(50),@ano_construcao AS INT,
    -- @area_total AS INT, @area_util AS INT;

    -- INSERT @table
    RETURN (SELECT I.preco, I.localizacao, I.ano_construcao, I.area_total, I.area_util 
			FROM Proj.[imovel] AS I JOIN Proj.[negocio] AS N ON I.imovel_codigo = N.imovel_codigo  
			JOIN Proj.[tipoNegocio] AS TP ON N.tipo_negocio_id = TP.id
            WHERE TP.id = @nid)
    -- RETURN @table
GO
/****** Object:  Table [Proj].[tipoComercial]    Script Date: 18/06/2021 23:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Proj].[tipoComercial](
	[id] [int] NOT NULL,
	[designacao] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [Proj].[udf_getComercialInfo]    Script Date: 18/06/2021 23:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [Proj].[udf_getComercialInfo] (@nid INT) RETURNS TABLE
AS
    -- IF @nid > 3 OR @nid < 0
    --     @nid = 1;    -- default value case if user input isn't valid

    -- DECLARE @preco AS INT, @localizacao AS VARCHAR(50), @ano_construcao AS INT,
    -- @area_total AS INT, @area_util AS INT, @estacionamento BOOLEAN;

    -- INSERT @table 
    RETURN (SELECT I.preco, I.localizacao, I.ano_construcao, I.area_total, I.area_util, C.estacionamento
            FROM Proj.[imovel] AS I JOIN Proj.[comercial] AS C ON I.imovel_codigo = C.imovel_codigo
            JOIN Proj.[tipoComercial] AS TC ON C.tipo_comercial_id = TC.id
            WHERE TC.id = @nid)     
    -- RETURN @table
GO
/****** Object:  Table [Proj].[addOn]    Script Date: 18/06/2021 23:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Proj].[addOn](
	[id] [int] NOT NULL,
	[designacao] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Proj].[agente]    Script Date: 18/06/2021 23:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Proj].[agente](
	[agente_nif] [int] NOT NULL,
	[num_agente] [int] NOT NULL,
	[dep_no] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[agente_nif] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Proj].[dept]    Script Date: 18/06/2021 23:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Proj].[dept](
	[dep_number] [int] NOT NULL,
	[localizacao] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[dep_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Proj].[interessado]    Script Date: 18/06/2021 23:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Proj].[interessado](
	[interessado_nif] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[interessado_nif] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Proj].[pessoa]    Script Date: 18/06/2021 23:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Proj].[pessoa](
	[nif] [int] NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[birth] [date] NOT NULL,
	[morada] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[num_tlm] [int] NOT NULL,
	[password] [varbinary](64) NOT NULL
PRIMARY KEY CLUSTERED 
(
	[nif] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Proj].[proposta]    Script Date: 18/06/2021 23:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Proj].[proposta](
	[proposta_codigo] [varchar](5) NOT NULL,
	[valor] [int] NOT NULL,
	[interessado_nif] [int] NOT NULL,
	[imovel_codigo] [varchar](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[proposta_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Proj].[proprietario]    Script Date: 18/06/2021 23:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Proj].[proprietario](
	[proprietario_nif] [int] NOT NULL,
	[agente_nif] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[proprietario_nif] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Proj].[temAddOn]    Script Date: 18/06/2021 23:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Proj].[temAddOn](
	[quantidade] [int] NOT NULL,
	[habitacional_codigo] [varchar](5) NOT NULL,
	[add_on_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[habitacional_codigo] ASC,
	[add_on_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Proj].[tipoHabitacional]    Script Date: 18/06/2021 23:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Proj].[tipoHabitacional](
	[id] [int] NOT NULL,
	[designacao] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Proj].[agente]  WITH CHECK ADD FOREIGN KEY([agente_nif])
REFERENCES [Proj].[pessoa] ([nif])
GO
ALTER TABLE [Proj].[agente]  WITH CHECK ADD FOREIGN KEY([dep_no])
REFERENCES [Proj].[dept] ([dep_number])
GO
ALTER TABLE [Proj].[habitacional]  WITH CHECK ADD FOREIGN KEY([imovel_codigo])
REFERENCES [Proj].[imovel] ([imovel_codigo])
GO
ALTER TABLE [Proj].[habitacional]  WITH CHECK ADD FOREIGN KEY([tipo_habitacional_id])
REFERENCES [Proj].[tipoHabitacional] ([id])
GO
ALTER TABLE [Proj].[imovel]  WITH CHECK ADD FOREIGN KEY([proprietario_nif])
REFERENCES [Proj].[proprietario] ([proprietario_nif])
GO
ALTER TABLE [Proj].[interessado]  WITH CHECK ADD FOREIGN KEY([interessado_nif])
REFERENCES [Proj].[pessoa] ([nif])
GO
ALTER TABLE [Proj].[proposta]  WITH CHECK ADD FOREIGN KEY([imovel_codigo])
REFERENCES [Proj].[imovel] ([imovel_codigo])
GO
ALTER TABLE [Proj].[proposta]  WITH CHECK ADD FOREIGN KEY([interessado_nif])
REFERENCES [Proj].[interessado] ([interessado_nif])
GO
ALTER TABLE [Proj].[proprietario]  WITH CHECK ADD FOREIGN KEY([agente_nif])
REFERENCES [Proj].[agente] ([agente_nif])
GO
ALTER TABLE [Proj].[proprietario]  WITH CHECK ADD FOREIGN KEY([proprietario_nif])
REFERENCES [Proj].[pessoa] ([nif])
GO
ALTER TABLE [Proj].[temAddOn]  WITH CHECK ADD FOREIGN KEY([add_on_id])
REFERENCES [Proj].[addOn] ([id])
GO
ALTER TABLE [Proj].[temAddOn]  WITH CHECK ADD FOREIGN KEY([habitacional_codigo])
REFERENCES [Proj].[habitacional] ([imovel_codigo])
GO
ALTER TABLE [Proj].[agente]  WITH CHECK ADD CHECK  (([num_agente]>(0)))
GO
ALTER TABLE [Proj].[dept]  WITH CHECK ADD CHECK  (([dep_number]>(0)))
GO
ALTER TABLE [Proj].[imovel]  WITH CHECK ADD CHECK  (([area_total]>(0)))
GO
ALTER TABLE [Proj].[imovel]  WITH CHECK ADD CHECK  (([preco]>(0)))
GO
ALTER TABLE [Proj].[imovel]  WITH CHECK ADD  CONSTRAINT [ck_area] CHECK  (([area_util]<=[area_total] AND [area_util]>(0)))
GO
ALTER TABLE [Proj].[imovel] CHECK CONSTRAINT [ck_area]
GO
/****** Object:  StoredProcedure [Proj].[cp_create_agente]    Script Date: 18/06/2021 23:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Proj].[cp_create_agente]       -- criar agente
@nif INT, @nome VARCHAR(50), @birth DATE, @email VARCHAR(50), @endereco VARCHAR(50), @num_agente INT, @dep_no INT, @num_tlm INT, @password VARBINARY(64)
AS 
	DECLARE @pwd VARBINARY(64)
	SET @pwd = (SELECT ENCRYPTBYPASSPHRASE('**********', @password))
	-- se a pessoa já for agente, então já existe na tabela pessoa e não é preciso inserir
	IF NOT EXISTS(SELECT * FROM Proj.[agente] WHERE agente_nif = @nif)
	--	INSERT INTO Proj.[pessoa] VALUES (@nif, @nome, @birth, @endereco, @email, @num_tlm, @pwd)
	INSERT INTO Proj.[agente] VALUES (@nif, @num_agente, @dep_no)
GO
