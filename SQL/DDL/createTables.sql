use p5g5;
GO

CREATE SCHEMA Proj;
GO

CREATE TABLE Proj.[pessoa] ( -- pessoa
	nif INT NOT NULL,
	nome VARCHAR(50) NOT NULL,
	birth DATE NOT NULL,
	endereco VARCHAR(50) NOT NULL,
	email VARCHAR(50) UNIQUE NOT NULL,
	num_tlm INT NOT NULL,
	[password] VARBINARY(64) NOT NULL,

    PRIMARY KEY(nif)
);

CREATE TABLE Proj.[dept] ( -- departamento
	dep_number INT CHECK (dep_number > 0) NOT NULL,
	localizacao VARCHAR(50) NOT NULL,

    PRIMARY KEY(dep_number)
);


CREATE TABLE Proj.[agente] ( -- agente
	agente_nif INT NOT NULL,
	num_agente INT NOT NULL,
	dep_no INT NOT NULL,
	CONSTRAINT ck_dep CHECK (dep_no > 0 AND dep_no < (SELECT COUNT(*) FROM p5g5.Proj.[dept])

	PRIMARY KEY(agente_nif),
    FOREIGN KEY(agente_nif) REFERENCES Proj.[pessoa](nif),
    FOREIGN KEY (dep_no) REFERENCES Proj.[dept](dep_number)
);

CREATE TABLE Proj.[interessado] ( -- interessado
	interessado_nif INT NOT NULL,

	PRIMARY KEY(interessado_nif),
	FOREIGN KEY(interessado_nif) REFERENCES Proj.[pessoa](nif)
);

CREATE TABLE Proj.[proprietario] ( -- proprietario
	proprietario_nif INT NOT NULL,
	agente_nif INT NOT NULL,

	PRIMARY KEY(proprietario_nif),
	FOREIGN KEY(proprietario_nif) REFERENCES Proj.[pessoa](nif),
	FOREIGN KEY(agente_nif) REFERENCES Proj.[agente](agente_nif),
);

CREATE TABLE Proj.[marcacao] ( -- marcacao
	data_marc DATE NOT NULL,
	interessado_nif INT NOT NULL,
	imovel_codigo VARCHAR(5) NOT NULL,

    PRIMARY KEY(data_marc),
    FOREIGN KEY(interessado_nif) REFERENCES Proj.[interessado](interessado_nif)
);

CREATE TABLE Proj.[imovel] ( -- imovel
	imovel_codigo VARCHAR(5) NOT NULL,
	preco INT NOT NULL CHECK (preco > 0),
	localizacao VARCHAR(50) NOT NULL,
	ano_construcao INT,
	area_total INT NOT NULL CHECK (area_total > 0),
	area_util INT,
	-- CONSTRAINT ck_area CHECK (area_util <= area_total AND area_util > 0),
	proprietario_nif INT NOT NULL,

    PRIMARY KEY(imovel_codigo),
    FOREIGN KEY(proprietario_nif) REFERENCES Proj.[proprietario](proprietario_nif)
);


CREATE TABLE Proj.[vendido] ( -- vendido
	v_imovel_codigo VARCHAR(5) NOT NULL,
	v_preco INT NOT NULL,
	v_localizacao VARCHAR(50) NOT NULL,
	v_ano_construcao INT,
	v_area_total INT NOT NULL,
	v_area_util INT,
	-- CONSTRAINT ck_area CHECK (area_util <= area_total AND area_util > 0),
	v_proprietario_nif INT NOT NULL,
	v_proposta_codigo VARCHAR(5) NOT NULL,
	v_valor INT NOT NULL,
	v_interessado_nif INT NOT NULL,

    PRIMARY KEY(v_imovel_codigo),
    FOREIGN KEY(v_proprietario_nif) REFERENCES Proj.[proprietario](proprietario_nif),
);


-- ALTER TABLE Proj.[imovel] DROP CONSTRAINT ck_area

CREATE TABLE Proj.[tipoNegocio] ( -- tipo de negocio
	id INT NOT NULL,
	designacao_negocio VARCHAR(50) NOT NULL,

    PRIMARY KEY(id)
);

CREATE TABLE Proj.[negocio] ( -- negocio
	referencia VARCHAR(9) NOT NULL,
	imovel_codigo VARCHAR(5) NOT NULL,
	tipo_negocio_id INT NOT NULL

    PRIMARY KEY(referencia),
    FOREIGN KEY(imovel_codigo) REFERENCES Proj.[imovel](imovel_codigo),
    FOREIGN KEY(tipo_negocio_id) REFERENCES Proj.[tipoNegocio](id)
);


CREATE TABLE Proj.[proposta] ( -- proposta
	proposta_codigo VARCHAR(5) NOT NULL,
	valor INT NOT NULL,
	interessado_nif INT NOT NULL,
	imovel_codigo VARCHAR(5) NOT NULL,

    PRIMARY KEY(proposta_codigo),
    FOREIGN KEY(interessado_nif) REFERENCES Proj.[interessado](interessado_nif),
    FOREIGN KEY(imovel_codigo) REFERENCES Proj.[imovel](imovel_codigo)
);

CREATE TABLE Proj.[vendido] ( -- vendido
	imovel_codigo VARCHAR(5) NOT NULL,
	preco INT NOT NULL CHECK (preco > 0),
	localizacao VARCHAR(50) NOT NULL,
	ano_construcao INT,
	area_total INT NOT NULL CHECK (area_total > 0),
	area_util INT,
	proprietario_nif INT NOT NULL,
	proposta_codigo VARCHAR(5) NOT NULL,

    PRIMARY KEY(imovel_codigo),
    FOREIGN KEY(proprietario_nif) REFERENCES Proj.[proprietario](proprietario_nif),
	FOREIGN KEY(proposta_codigo) REFERENCES Proj.[proposta](proposta_codigo)
);

CREATE TABLE Proj.[tipoComercial] ( -- tipo de imovel comercial
	id INT NOT NULL,
	designacao_comercial VARCHAR(50) NOT NULL,

	PRIMARY KEY(id)
);

CREATE TABLE Proj.[comercial] ( -- imovel comercial
	imovel_codigo VARCHAR(5) NOT NULL,
	estacionamento BIT NOT NULL,
	tipo_comercial_id INT NOT NULL,

    PRIMARY KEY(imovel_codigo),
    FOREIGN KEY(imovel_codigo) REFERENCES Proj.[imovel](imovel_codigo),
	FOREIGN KEY(tipo_comercial_id) REFERENCES Proj.[tipoComercial](id)
);

CREATE TABLE Proj.[tipoHabitacional] ( -- tipo de imovel habitacional
	id INT NOT NULL,
	designacao_habitacional VARCHAR(50) NOT NULL,

	PRIMARY KEY(id)
);

CREATE TABLE Proj.[habitacional] ( -- imovel habitacional
	imovel_codigo VARCHAR(5) NOT NULL,
	num_quartos INT,
	wcs INT,
	tipo_habitacional_id INT NOT NULL,

    PRIMARY KEY(imovel_codigo),
    FOREIGN KEY(imovel_codigo) REFERENCES Proj.[imovel](imovel_codigo),
	FOREIGN KEY(tipo_habitacional_id) REFERENCES Proj.[tipoHabitacional](id)
);

CREATE TABLE Proj.[addOn] ( -- add on
	id INT NOT NULL,
	designacao_addon VARCHAR(50) NOT NULL,

    PRIMARY KEY(id)
);

CREATE TABLE Proj.[temAddOn] ( -- tem add on
	quantidade INT NOT NULL,
	habitacional_codigo VARCHAR(5) NOT NULL,
	add_on_id INT NOT NULL,

    PRIMARY KEY(habitacional_codigo, add_on_id),
    FOREIGN KEY(habitacional_codigo) REFERENCES Proj.[habitacional](imovel_codigo),
    FOREIGN KEY(add_on_id) REFERENCES Proj.[addOn](id)
);
