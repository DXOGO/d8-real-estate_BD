use p5g5;
GO

CREATE SCHEMA Proj;
GO

create table Proj.[pessoa] ( -- pessoa
	nif INT(9) NOT NULL,
	nome VARCHAR(50) NOT NULL,
	birth DATE NOT NULL,
	morada VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	num_tlm INT(9) NOT NULL,

    PRIMARY KEY(nif)
);

CREATE TABLE Proj.[dept] ( -- departamento
	dep_number INT CHECK (dep_number > 0) NOT NULL,
	localizacao VARCHAR(50) NOT NULL,

    PRIMARY KEY(dep_number)
);


CREATE TABLE Proj.[agente] ( -- agente
	agente_nif INT(9) NOT NULL,
	num_agente INT CHECK (num_agente > 0) NOT NULL,
	dep_no INT NOT NULL,

    FOREIGN KEY(agente_nif) REFERENCES Proj.[pessoa](nif),
    FOREIGN KEY (dep_no) REFERENCES Proj.[dept](dep_number)
);

CREATE TABLE Proj.[interessado] ( -- interessado
	interessado_nif INT(9) NOT NULL,

	FOREIGN KEY(interessado_nif) REFERENCES Proj.[pessoa](nif)
);

CREATE TABLE Proj.[proprietario] ( -- proprietario
	proprietario_nif INT(9) NOT NULL,
	agente_nif INT(9) NOT NULL,

	FOREIGN KEY(proprietario_nif) REFERENCES Proj.[pessoa](nif),
	FOREIGN KEY(agente_nif) REFERENCES Proj.[agente](agente_nif),
);

CREATE TABLE Proj.[marcacao] ( -- marcacao
	data_marc DATE NOT NULL,
	interessado_nif INT(9) NOT NULL,
	imovel_codigo VARCHAR(5) NOT NULL,

    PRIMARY KEY(data_marc),
    FOREIGN KEY(interessado_nif) REFERENCES Proj.[interessado](interessado_nif)
);

CREATE TABLE Proj.[imovel] ( -- imovel
	imovel_codigo VARCHAR(5) NOT NULL,
	preco INT NOT NULL CHECK (preco > 0),
	localizacao VARCHAR(50) NOT NULL,
	ano_construcao INT NOT NULL,
	area_total INT NOT NULL CHECK (area_total > 0),
	area_util INT NOT NULL CHECK (area_util <= area_total AND area_util > 0),
	proprietario_nif INT(9) NOT NULL,

    PRIMARY KEY(imovel_codigo),
    FOREIGN KEY(proprietario_nif) REFERENCES Proj.[proprietario](proprietario_nif)
);

CREATE TABLE Proj.[tipoNegocio] ( -- tipo de negocio
	id INT NOT NULL,
	designacao VARCHAR(50) NOT NULL,

    PRIMARY KEY(id)
);

CREATE TABLE Proj.[negocio] ( -- negocio
	referencia VARCHAR(9) NOT NULL,
	imovel_codigo VARCHAR(5) NOT NULL,
	tipo_negocio_id INT NOT NULL

    PRIMARY KEY(referencia),
    FOREIGN KEY(imovel_codigo) REFERENCES Proj.[imovel](imovel_codigo),
    FOREIGN KEY(tipo_negocio_id) REFERENCES Proj.[tipoNegocio]](id)
);

CREATE TABLE Proj.[proposta] ( -- proposta
	proposta_codigo VARCHAR(5) NOT NULL,
	valor INT NOT NULL,
	interessado_nif INT(9) NOT NULL,
	imovel_codigo INT(9) NOT NULL,

    PRIMARY KEY(proposta_cod),
    FOREIGN KEY(interessado_nif) REFERENCES Proj.[interessado](interessado_nif),
    FOREIGN KEY(imovel_codigo) REFERENCES Proj.[imovel](imovel_codigo)
);

CREATE TABLE Proj.[tipoComercial] ( -- tipo de imovel comercial
	id INT NOT NULL,
	designacao VARCHAR(50) NOT NULL,

	PRIMARY KEY(id)
);

CREATE TABLE Proj.[comercial] ( -- imovel comercial
	imovel_codigo VARCHAR(5) NOT NULL,
	estacionamento BOOLEAN NOT NULL,
	tipo_comercial_id INT NOT NULL,

    PRIMARY KEY(imovel_codigo),
    FOREIGN KEY(imovel_codigo) REFERENCES Proj.[imovel](imovel_codigo)
	FOREIGN KEY(tipo_comercial_id) REFERENCES Proj.[tipoComercial](id)
);

CREATE TABLE Proj.[tipoHabitacional] ( -- tipo de imovel habitacional
	id INT NOT NULL,
	designacao VARCHAR(50) NOT NULL,

	PRIMARY KEY(id)
);

CREATE TABLE Proj.[habitacional] ( -- imovel habitacional
	imovel_codigo VARCHAR(5) NOT NULL,
	num_quartos INT NOT NULL,
	wcs INT NOT NULL,
	tipo_habitacional_id INT NOT NULL CHECK,

    PRIMARY KEY(imovel_codigo),
    FOREIGN KEY(imovel_codigo) REFERENCES Proj.[imovel](imovel_codigo),
	FOREIGN KEY(tipo_habitacional_id) REFERENCES Proj.[tipoHabitacional](id)
);

CREATE TABLE Proj.[addOn] ( -- add on
	id INT NOT NULL,
	designacao VARCHAR(50) NOT NULL,

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