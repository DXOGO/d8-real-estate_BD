-- INSERTS E EXECS DE PROCEDURES PARA CRIAR PESSOAS

-- 3 DEPARTAMENTOS que somam 80 AGENTES
INSERT INTO Proj.[dept] (dep_number, localizacao) values (1, 'Aveiro');
INSERT INTO Proj.[dept] (dep_number, localizacao) values (2, 'Coimbra');
INSERT INTO Proj.[dept] (dep_number, localizacao) values (3, 'Lisboa');


-- INTERESSADOS com MARCACAO (sao 12)
INSERT INTO Proj.[marcacao] (data_marc, interessado_nif, imovel_codigo) values ('22/09/2021', 618160555, 'C2698');
INSERT INTO Proj.[marcacao] (data_marc, interessado_nif, imovel_codigo) values ('12/07/2021', 420882529, 'S2888');
INSERT INTO Proj.[marcacao] (data_marc, interessado_nif, imovel_codigo) values ('27/07/2021', 690270527, 'F2356');
INSERT INTO Proj.[marcacao] (data_marc, interessado_nif, imovel_codigo) values ('14/08/2021', 357781117, 'E2886');
INSERT INTO Proj.[marcacao] (data_marc, interessado_nif, imovel_codigo) values ('12/09/2021', 986196210, 'I2094');
INSERT INTO Proj.[marcacao] (data_marc, interessado_nif, imovel_codigo) values ('05/08/2021', 117003456, 'U2875');
INSERT INTO Proj.[marcacao] (data_marc, interessado_nif, imovel_codigo) values ('14/07/2021', 491839661, 'Z2142');
INSERT INTO Proj.[marcacao] (data_marc, interessado_nif, imovel_codigo) values ('20/07/2021', 788580857, 'M2730');
INSERT INTO Proj.[marcacao] (data_marc, interessado_nif, imovel_codigo) values ('17/11/2021', 693134741, 'R2989');
INSERT INTO Proj.[marcacao] (data_marc, interessado_nif, imovel_codigo) values ('11/10/2021', 617854415, 'S2590');
INSERT INTO Proj.[marcacao] (data_marc, interessado_nif, imovel_codigo) values ('24/12/2021', 359510160, 'K2139');
-- PROPRIETARIA e INTERESSADA com MARCACAO (Marjory Blowing)
INSERT INTO Proj.[marcacao] (data_marc, interessado_nif, imovel_codigo) values ('10/09/2020', 900862465, 'F2197');


-- 40 IMOVEIS no mercado mas apenas 33 proprietarios, ou seja, há deles que meteram mais que um imovel
-- MARCACOES nestes imoveis C/ PROPOSTA
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('C2698', 147657, '880 Waxwing Avenue', 2010, 221, 355, 823099525);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('F2197', 132196, '29219 Loftsgordon Parkway', 1926, 308, 279, 015253293);
-- MARCACOES S/ PROPOSTA
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('S2888', 149919, '652 Clemons Lane', 1954, 433, 48, 171781978);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('F2356', 148163, '919 Arizona Alley', 1909, 500, 161, 876915089);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('E2886', 20845, '77324 Montana Circle', 1978, 325, 110, 922542934);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('I2094', 122142, '9365 Straubel Court', 1913, 324, 144, 966158937);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('U2875', 12975, '847 Swallow Pass', 1859, 338, 257, 351592370);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('Z2142', 89411, '02 Village Hill', 1901, 336, 208, 514654614);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('M2730', 38785, '24166 Mcbride Point', 1862, 394, 292,  505642867);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('R2989', 140323, '91 Amoth Avenue', 1925, 472, 230, 228387272);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('S2590', 24938, '35993 Hanson Hill', 1938, 321, 82,  651860666);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('K2139', 85163, '14973 Calypso Crossing', 1930, 272, 196, 160172334);
-- PROPOSTA S/ MARCACAO
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('R2869', 12648, '7 Bayside Street', 1911, 256, 177, 616265936);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('Y2140', 143919, '38 Bartillon Terrace', 1909, 389, 117, 696942724);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('F2270', 28939, '925 Glacier Hill Trail', 2014, 429, 298, 831440051);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('N2706', 62733, '43179 Westerfield Trail', 1924, 330, 271, 077851633);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('F2937', 64412, '06084 Farwell Junction', 1853, 190, 94, 229608342);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('M2466', 97161, '27 Loftsgordon Lane', 1952, 375, 356, 723466311);
-- no mercado mas apenas S/ PROPOSTA e S/ MARCACAO
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('Y2579', 141186, '8 Utah Park', 1958, 355, 295, 093669376);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('M2699', 51507, '90 Pond Drive', 1988, 316, 66, 119768849);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('X2314', 74585, '5890 Vera Lane', 1907, 407, 402, 354369842);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('A2992', 60656, '67194 2nd Center', 1857, 372, 39, 750394566);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('P2323', 74639, '0 Ridge Oak Hill', 1860, 218, 117, 051715700);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('H2139', 122622, '48 Del Sol Circle', 1998, 365, 101, 251796479);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('B2714', 7470, '72 Ludington Lane', 1974, 331, 236, 478047643);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('Z2080', 122474, '40 Northview Court', 1903, 419, 41, 823099525);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('J2482', 67280, '7 Amoth Crossing', 2008, 368, 318, 792808115);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('T2597', 139337, '75053 Waxwing Road', 1958, 417, 86, 455998693);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('Q2765', 61549, '0 Division Court', 1908, 350, 311, 739231581);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('F2319', 34460, '77 Forest Run Trail', 1955, 434, 113, 672806706);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('B2628', 65929, '17 Maryland Junction', 1879, 314, 312, 900862465);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('C2618', 119848, '48 Golden Leaf Plaza', 1865, 237, 193, 708093907);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('H2200', 14345, '5470 Helena Lane', 1970, 171, 20, 471172502);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('P2065', 56368, '2383 Pond Parkway', 1976, 199, 175, 637579252);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('G2960', 53762, '61 Jenna Hill', 1976, 477, 258, 823099525);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('T2151', 42279, '95 Trailsway Junction', 1870, 315, 86, 093669376);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('H2902', 75488, '22 Bunting Lane', 1956, 458, 58, 119768849);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('V2436', 142447, '857 Scofield Center', 1906, 497, 116, 696942724);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('Q2678', 59565, '7 Moland Way', 1908, 385, 193, 723466311);
INSERT INTO Proj.[imovel] (imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif) values ('C2308', 39710, '420 Steensland Place', 1971, 454, 106, 723466311);


-- 40 TIPOS DE NEGOCIO p 40 IMOVEIS
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('T31908126', 'C2698', 2);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('T88838740', 'F2197', 1);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('I47533984', 'S2888', 1);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('E47958224', 'F2356', 2);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('T03851558', 'E2886', 3);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('P40395990', 'I2094', 2);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('Z49541843', 'U2875', 1);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('V26864024', 'Z2142', 1);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('I23999434', 'M2730', 1);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('C68670439', 'R2989', 1);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('R45698240', 'S2590', 1);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('E42200037', 'K2139', 2);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('H58833432', 'R2869', 2);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('Y05460248', 'Y2140', 3);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('Q30421670', 'F2270', 1);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('I90235133', 'N2706', 2);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('S06576042', 'F2937', 1);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('A82372231', 'M2466', 3);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('Z80897293', 'Y2579', 2);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('L50789458', 'M2699', 3);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('F45943484', 'X2314', 3);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('I48958809', 'A2992', 1);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('B32520244', 'P2323', 3);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('L50293583', 'H2139', 2);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('N59166455', 'B2714', 1);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('R24868098', 'Z2080', 1);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('Z23993782', 'J2482', 2);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('D30312406', 'T2597', 2);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('M77906319', 'Q2765', 2);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('I73285781', 'F2319', 1);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('Y81054157', 'B2628', 3);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('W25026126', 'C2618', 2);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('U90064928', 'H2200', 2);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('X40559738', 'P2065', 2);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('L98915873', 'G2960', 1);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('B76566286', 'T2151', 1);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('H28538387', 'H2902', 2);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('B01153338', 'V2436', 2);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('O24377959', 'Q2678', 3);
INSERT INTO Proj.[negocio] (referencia, imovel_codigo, tipo_negocio_id) values ('S38873097', 'C2308', 1);


-- 8 PROPOTAS de IMOVEIS
-- propostas de interessados q nao fizeram marcacao
INSERT INTO Proj.[proposta] (proposta_codigo, valor, interessado_nif, imovel_codigo) values ('QMJLI', 59276, 011839475, 'Y2140');
INSERT INTO Proj.[proposta] (proposta_codigo, valor, interessado_nif, imovel_codigo) values ('ZOPNK', 62954, 616067010, 'F2270');
INSERT INTO Proj.[proposta] (proposta_codigo, valor, interessado_nif, imovel_codigo) values ('DFATY', 07485, 027809680, 'N2706');
INSERT INTO Proj.[proposta] (proposta_codigo, valor, interessado_nif, imovel_codigo) values ('PINSK', 14400, 841873538, 'F2937');
INSERT INTO Proj.[proposta] (proposta_codigo, valor, interessado_nif, imovel_codigo) values ('SUJOU', 55999, 093408945, 'M2466');
INSERT INTO Proj.[proposta] (proposta_codigo, valor, interessado_nif, imovel_codigo) values ('AANJR', 85554, 565239661, , 'R2869');
-- proposta de um interessado q fez marcacao
INSERT INTO Proj.[proposta] (proposta_codigo, valor, interessado_nif, imovel_codigo) values ('AMFJY', 120000, 618160555, 'C2698';
-- proposta da proprietaria/interessada q fez marcacao (Marjory Blowing)
INSERT INTO Proj.[proposta] (proposta_codigo, valor, interessado_nif, imovel_codigo) values ('YYJXH', 22500, 900862465, 'F2197');


-- TIPO DE NEGOCIO: 1-venda, 2-aluguer, 3-trespasse
INSERT INTO Proj.[tipoNegocio] (id, designacao) values (1, 'venda');
INSERT INTO Proj.[tipoNegocio] (id, designacao) values (2, 'aluguer');
INSERT INTO Proj.[tipoNegocio] (id, designacao) values (3, 'trespasse');

-- TIPO DE IMOVEL COMERCIAL: 1-escritorio, 2-loja, 3-armazem
INSERT INTO Proj.[tipoComercial] (id, designacao) values (1, 'escritorio');
INSERT INTO Proj.[tipoComercial] (id, designacao) values (2, 'loja');
INSERT INTO Proj.[tipoComercial] (id, designacao) values (3, 'armazem');

-- 12 IMOVEIS COMERCIAIS
-- 0 -> false, 1 -> true
INSERT INTO Proj.[comercial] (imovel_codigo, estacionamento, tipo_comercial_id) values ('S2888', 0, 2);
INSERT INTO Proj.[comercial] (imovel_codigo, estacionamento, tipo_comercial_id) values ('F2356', 0, 3);
INSERT INTO Proj.[comercial] (imovel_codigo, estacionamento, tipo_comercial_id) values ('R2869', 1, 3);
INSERT INTO Proj.[comercial] (imovel_codigo, estacionamento, tipo_comercial_id) values ('Y2579', 0, 1);
INSERT INTO Proj.[comercial] (imovel_codigo, estacionamento, tipo_comercial_id) values ('M2699', 1, 1);
INSERT INTO Proj.[comercial] (imovel_codigo, estacionamento, tipo_comercial_id) values ('X2314', 1, 2);
INSERT INTO Proj.[comercial] (imovel_codigo, estacionamento, tipo_comercial_id) values ('A2992', 1, 3);
INSERT INTO Proj.[comercial] (imovel_codigo, estacionamento, tipo_comercial_id) values ('P2323', 1, 1);
INSERT INTO Proj.[comercial] (imovel_codigo, estacionamento, tipo_comercial_id) values ('H2139', 1, 3);
INSERT INTO Proj.[comercial] (imovel_codigo, estacionamento, tipo_comercial_id) values ('B2714', 0, 1);
INSERT INTO Proj.[comercial] (imovel_codigo, estacionamento, tipo_comercial_id) values ('Z2080', 0, 2);
INSERT INTO Proj.[comercial] (imovel_codigo, estacionamento, tipo_comercial_id) values ('J2482', 0, 2);


-- TIPO DE IMOVEL HABITACIONAL: 1-apartamento, 2-quinta, 3-casa, 4-terreno, 5-quarto
INSERT INTO Proj.[tipoHabitacional] (id, designacao) values (1, 'apartamento');
INSERT INTO Proj.[tipoHabitacional] (id, designacao) values (2, 'quinta');
INSERT INTO Proj.[tipoHabitacional] (id, designacao) values (3, 'moradia');
INSERT INTO Proj.[tipoHabitacional] (id, designacao) values (4, 'terreno');
INSERT INTO Proj.[tipoHabitacional] (id, designacao) values (5, 'quarto');


-- 28 IMOVEIS HABITACIONAIS
INSERT INTO Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id) values ('F2197', 4, 2, 2);
INSERT INTO Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id) values ('E2886', 3, 3, 1);
INSERT INTO Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id) values ('I2094', 1, 1, 5);
INSERT INTO Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id) values ('U2875', 5, 2, 2);
INSERT INTO Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id) values ('Z2142', 6, 3, 2);
INSERT INTO Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id) values ('M2730', 1, 1, 5);
INSERT INTO Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id) values ('R2989', 0, 0, 4);
INSERT INTO Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id) values ('S2590', 3, 3, 1);
INSERT INTO Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id) values ('K2139', 0, 1, 4);
INSERT INTO Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id) values ('C2698', 3, 3, 1);
INSERT INTO Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id) values ('F2270', 2, 2, 3);
INSERT INTO Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id) values ('N2706', 6, 4, 2);
INSERT INTO Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id) values ('F2937', 1, 2, 1);
INSERT INTO Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id) values ('M2466', 3, 4, 1);
INSERT INTO Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id) values ('T2597', 5, 1, 2);
INSERT INTO Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id) values ('Q2765', 4, 1, 3);
INSERT INTO Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id) values ('F2319', 4, 4, 1);
INSERT INTO Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id) values ('B2628', 4, 2, 1);
INSERT INTO Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id) values ('C2618', 1, 1, 3);
INSERT INTO Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id) values ('H2200', 6, 2, 3);
INSERT INTO Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id) values ('P2065', 3, 1, 3);
INSERT INTO Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id) values ('G2960', 3, 1, 1);
INSERT INTO Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id) values ('T2151', 2, 1, 3);
INSERT INTO Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id) values ('H2902', 5, 3, 3);
INSERT INTO Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id) values ('V2436', 2, 1, 3);
INSERT INTO Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id) values ('Q2678', 1, 1, 5);
INSERT INTO Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id) values ('C2308', 2, 2, 3);
INSERT INTO Proj.[habitacional] (imovel_codigo, num_quartos, wcs, tipo_habitacional_id) values ('Y2140', 5, 3, 3);


-- TIPO DE ADD ON: 1-churrasqueira, 2-piscina, 3-paineis solares, 4-jardim, 5-jacuzzi, 6-garagem 
INSERT INTO Proj.[addOn] (id, designacao) values (1, 'churrasqueira');
INSERT INTO Proj.[addOn] (id, designacao) values (2, 'piscina');
INSERT INTO Proj.[addOn] (id, designacao) values (3, 'painel solar');
INSERT INTO Proj.[addOn] (id, designacao) values (4, 'jardim');
INSERT INTO Proj.[addOn] (id, designacao) values (5, 'jacuzzi');
INSERT INTO Proj.[addOn] (id, designacao) values (6, 'garagem');

-- ADD ONS de alguns IMOVEIS HABITACIONAIS no mercado e quantidades
INSERT INTO Proj.[temAddOn] (quantidade, habitacional_codigo, add_on_id) values (1, 'F2197', 5);
INSERT INTO Proj.[temAddOn] (quantidade, habitacional_codigo, add_on_id) values (1, 'E2886', 1);
INSERT INTO Proj.[temAddOn] (quantidade, habitacional_codigo, add_on_id) values (2, 'U2875', 6);
INSERT INTO Proj.[temAddOn] (quantidade, habitacional_codigo, add_on_id) values (2, 'Z2142', 4);
INSERT INTO Proj.[temAddOn] (quantidade, habitacional_codigo, add_on_id) values (1, 'C2698', 5);
INSERT INTO Proj.[temAddOn] (quantidade, habitacional_codigo, add_on_id) values (4, 'F2270', 4);
INSERT INTO Proj.[temAddOn] (quantidade, habitacional_codigo, add_on_id) values (3, 'N2706', 1);
INSERT INTO Proj.[temAddOn] (quantidade, habitacional_codigo, add_on_id) values (1, 'F2937', 3);
INSERT INTO Proj.[temAddOn] (quantidade, habitacional_codigo, add_on_id) values (2, 'T2597', 1);
INSERT INTO Proj.[temAddOn] (quantidade, habitacional_codigo, add_on_id) values (2, 'Q2765', 5);
INSERT INTO Proj.[temAddOn] (quantidade, habitacional_codigo, add_on_id) values (1, 'F2319', 4);
INSERT INTO Proj.[temAddOn] (quantidade, habitacional_codigo, add_on_id) values (1, 'B2628', 6);
INSERT INTO Proj.[temAddOn] (quantidade, habitacional_codigo, add_on_id) values (1, 'C2618', 2);
INSERT INTO Proj.[temAddOn] (quantidade, habitacional_codigo, add_on_id) values (1, 'H2200', 4);
INSERT INTO Proj.[temAddOn] (quantidade, habitacional_codigo, add_on_id) values (6, 'P2065', 6);
INSERT INTO Proj.[temAddOn] (quantidade, habitacional_codigo, add_on_id) values (1, 'G2960', 6);
INSERT INTO Proj.[temAddOn] (quantidade, habitacional_codigo, add_on_id) values (5, 'T2151', 1);
INSERT INTO Proj.[temAddOn] (quantidade, habitacional_codigo, add_on_id) values (1, 'H2902', 3);
INSERT INTO Proj.[temAddOn] (quantidade, habitacional_codigo, add_on_id) values (2, 'V2436', 3);
INSERT INTO Proj.[temAddOn] (quantidade, habitacional_codigo, add_on_id) values (2, 'C2308', 2);
INSERT INTO Proj.[temAddOn] (quantidade, habitacional_codigo, add_on_id) values (1, 'Y2140', 2);


-- 80 agentes
EXEC Proj.[cp_create_agente] 839684855, 'Therine Twiggins', '27/02/1981', 'ttwiggins0@blinklist.com', '9 Sheridan Parkway', 1, 3, 938325651, 'L6ue9s7';
EXEC Proj.[cp_create_agente] 631748029, 'Kettie Borrott', '02/06/1958', 'kborrott1@w3.org', '15156 Eliot Junction', 2, 3, 937261093, 'vOXkhL5bxG';
EXEC Proj.[cp_create_agente] 683133443, 'Eward Napper', '06/12/1994', 'enapper2@pinterest.com', '5 Towne Park', 3, 2, 930965532, 'ikJpQPhY';
EXEC Proj.[cp_create_agente] 372273797, 'Waneta Banks', '21/09/1964', 'wbanks3@hatena.ne.jp', '26583 Spohn Terrace', 4, 2, 914967839, '5YFLzW7os7J7';
EXEC Proj.[cp_create_agente] 309192268, 'Ronica Poff', '25/06/1998', 'rpoff4@weather.com', '47 Porter Junction', 5, 2, 936196630, 'VkNRoVRQc';
EXEC Proj.[cp_create_agente] 963467845, 'Araldo Spens', '29/03/1969', 'aspens5@naver.com', '05785 Stang Drive', 6, 3, 938232741, 'pu7VSfonK';
EXEC Proj.[cp_create_agente] 194114527, 'Leda Kerwood', '03/03/1985', 'lkerwood6@google.cn', '32 Reindahl Avenue', 7, 2, 908295464, '6cNV6cC6';
EXEC Proj.[cp_create_agente] 023117550, 'Matthus Isted', '17/07/1974', 'misted7@techcrunch.com', '977 Spenser Drive', 8, 2, 991592893, 'ypIJyXOp';
EXEC Proj.[cp_create_agente] 859381020, 'Stanley Pedreschi', '17/07/1988', 'spedreschi8@dion.ne.jp', '94580 Elka Circle', 9, 3, 938135148, 'lK9A2amA02K';
EXEC Proj.[cp_create_agente] 373381498, 'Thekla Piwell', '24/02/1968', 'tpiwell9@wired.com', '65635 Fair Oaks Terrace', 10, 1, 930998370, 'a2xlOIXV';
EXEC Proj.[cp_create_agente] 408325564, 'Klemens Alden', '10/09/1987', 'kaldena@naver.com', '5 Fuller Junction', 11, 3, 974832478, 'j2B0pI';
EXEC Proj.[cp_create_agente] 235517014, 'Karen Bromell', '24/10/1960', 'kbromellb@themeforest.net', '33374 Menomonie Parkway', 12, 1, 922436715, 'Osk7KqDFLWeM';
EXEC Proj.[cp_create_agente] 763670182, 'Nikkie Heaney', '12/11/1963', 'noheaneyc@storify.com', '1 Claremont Parkway', 13, 1, 914672644, 'ss4mQI';
EXEC Proj.[cp_create_agente] 178197861, 'Dom Murtimer', '06/09/1975', 'dmurtimerd@freewebs.com', '2965 Pine View Way', 14, 1, 986706223, '8yMXuM1HaeB';
EXEC Proj.[cp_create_agente] 619598735, 'Seth Nabbs', '20/09/1993', 'snabbse@gov.uk', '89 Roth Place', 15, 1, 952997422, '70Sgwcuj';
EXEC Proj.[cp_create_agente] 780482914, 'Romona Denholm', '17/03/1997', 'rdenholmf@princeton.edu', '961 Ilene Drive', 16, 1, 996763611, 'DIyJHgSZh';
EXEC Proj.[cp_create_agente] 268482736, 'Zarah Garnall', '22/02/1977', 'zgarnallg@msn.com', '1968 Burrows Junction', 17, 1, 978884103, 'Sda0hpqpHr';
EXEC Proj.[cp_create_agente] 289982188, 'Kassia Edelheid', '05/01/1952', 'kedelheidh@dion.ne.jp', '4291 Elgar Circle', 18, 3, 916372194, 'RU68AGn8';
EXEC Proj.[cp_create_agente] 789300671, 'Vinnie Filchagin', '16/06/1987', 'vfilchagini@de.vu', '602 Prairieview Park', 19, 2, 907197965, '204BgX';
EXEC Proj.[cp_create_agente] 061088842, 'Ainsley Cake', '16/04/1980', 'acakej@weibo.com', '6 Union Lane', 20, 1, 916730296, 'GlEtDIZ91elz';
EXEC Proj.[cp_create_agente] 897342792, 'Collette Paty', '19/07/1967', 'cpatyk@yahoo.com', '17 Charing Cross Plaza', 21, 1, 962979677, 'T9Wt88bJIaNN';
EXEC Proj.[cp_create_agente] 580727968, 'Mano Blampey', '20/02/2000', 'mblampeyl@who.int', '0 South Circle', 22, 2, 914299898, 'g0J7m5nO9FiQ';
EXEC Proj.[cp_create_agente] 116872071, 'Ynes Gravenell', '13/03/1969', 'ygravenellm@nytimes.com', '9081 Lerdahl Junction', 23, 3, 948264009, '5KDObdjGvQ4v';
EXEC Proj.[cp_create_agente] 727298046, 'Sayre Tatem', '06/01/1994', 'statemn@squarespace.com', '80 Holmberg Place', 24, 3, 980031000, 'SmbXSv';
EXEC Proj.[cp_create_agente] 367583469, 'Ramona Dunford', '10/10/1954', 'rdunfordo@360.cn', '7127 Grim Hill', 25, 1, 955114009, 'EKJMsji4';
EXEC Proj.[cp_create_agente] 218235937, 'Olia Dettmar', '06/09/1957', 'odettmarp@youtube.com', '9707 Granby Park', 26, 1, 979995818, 'CY7VgNzEs';
EXEC Proj.[cp_create_agente] 633745594, 'Binnie Bowkley', '20/06/1968', 'bbowkleyq@cyberchimps.com', '1 Stang Crossing', 27, 2, 996209037, 'YxhBHVr';
EXEC Proj.[cp_create_agente] 628692141, 'Harrie Sandhill', '03/05/1975', 'hsandhillr@creativecommons.org', '63 Trailsway Terrace', 28, 1, 913165306, 'CmyJVXtoe9L5';
EXEC Proj.[cp_create_agente] 184081898, 'Moe Shawyer', '21/12/1951', 'mshawyers@t.co', '09 Waywood Parkway', 29, 3, 968575685, 'ce4kH85BSAfu';
EXEC Proj.[cp_create_agente] 371425792, 'Hamlen Chumley', '06/07/1982', 'hchumleyt@youtube.com', '10150 Prairieview Crossing', 30, 2, 960113554, 'vi2jHabVvZ';
EXEC Proj.[cp_create_agente] 825045183, 'Robinetta Middle', '17/07/2000', 'rmiddleu@ed.gov', '1753 Calypso Pass', 31, 3, 992448523, 'rLbsOlU4tvl';
EXEC Proj.[cp_create_agente] 478038352, 'Benoit Kubista', '17/06/1994', 'bkubistav@t.co', '6 Muir Drive', 32, 3, 969773492, 'QwmXriVRRj';
EXEC Proj.[cp_create_agente] 631724018, 'Langsdon Ellgood', '27/01/1964', 'lellgoodw@reverbnation.com', '420 4th Court', 33, 3, 972109191, 'u5ecwZH';
EXEC Proj.[cp_create_agente] 036333143, 'Hobard Fick', '07/10/1986', 'hfickx@netvibes.com', '1 Hovde Lane', 34, 2, 978609823, 'WjDFlUrEx2M';
EXEC Proj.[cp_create_agente] 722045350, 'Bonnibelle Matley', '18/09/1990', 'bmatleyy@mit.edu', '350 Menomonie Alley', 35, 3, 966106014, 'cVnJYm7w7';
EXEC Proj.[cp_create_agente] 697019923, 'Germayne Canning', '02/09/1994', 'gcanningz@noaa.gov', '40182 Hoard Drive', 36, 2, 973955812, 'OLp8Oh';
EXEC Proj.[cp_create_agente] 206033189, 'Justus Ashbridge', '27/11/1987', 'jashbridge10@moonfruit.com', '52 Arrowood Circle', 37, 2, 962638365, 'PeFzgcJk';
EXEC Proj.[cp_create_agente] 037541416, 'Bradley Copnar', '22/07/1963', 'bcopnar11@indiegogo.com', '78 Summer Ridge Pass', 38, 3, 924896877, '3swIBYiHY';
EXEC Proj.[cp_create_agente] 379283802, 'Maximilianus Oddie', '07/12/1972', 'moddie12@csmonitor.com', '899 Waubesa Hill', 39, 2, 979140288, 'CjQWYD7A4Gh';
EXEC Proj.[cp_create_agente] 905778131, 'Trisha Mil', '16/03/1995', 'tmil13@topsy.com', '2787 Jay Hill', 40, 2, 991511508, 'PpnVOtIx';
EXEC Proj.[cp_create_agente] 112133071, 'Enoch Mapham', '16/08/1963', 'emapham14@macromedia.com', '171 Marcy Point', 41, 2, 975084100, '6Hr5qknyRP';
EXEC Proj.[cp_create_agente] 581353194, 'Sergei Scoterbosh', '03/10/1955', 'sscoterbosh15@reverbnation.com', '8801 Hoard Park', 42, 3, 919737626, 'DRk5ZJ';
EXEC Proj.[cp_create_agente] 648851106, 'Ruthi Fesby', '09/11/1978', 'rfesby16@youtube.com', '2791 Anzinger Crossing', 43, 2, 935338652, 'UXj4pH4dyNp';
EXEC Proj.[cp_create_agente] 372729290, 'Lishe Tabb', '17/01/1975', 'ltabb17@facebook.com', '6 Debra Plaza', 44, 1, 954434488, '24V3RfJCL7u';
EXEC Proj.[cp_create_agente] 119650587, 'Tristam Girvin', '31/10/1992', 'tgirvin18@statcounter.com', '4 Hooker Plaza', 45, 1, 944471920, 'LxK9fA074Amf';
EXEC Proj.[cp_create_agente] 427825540, 'Jourdan Potbury', '20/05/1953', 'jpotbury19@weebly.com', '39 Welch Crossing', 46, 1, 962986421, 'X6B7w7';
EXEC Proj.[cp_create_agente] 499800448, 'Aleta Pedwell', '28/08/1969', 'apedwell1a@trellian.com', '86 Brickson Park Trail', 47, 2, 951916079, 'aDpX8YiXZDdV';
EXEC Proj.[cp_create_agente] 470006152, 'Cacilie Baulch', '05/03/2000', 'cbaulch1b@rambler.ru', '6 Sugar Court', 48, 2, 984051046, '8yaqXw';
EXEC Proj.[cp_create_agente] 646672914, 'Thaddus Dabell', '17/10/1955', 'tdabell1c@soundcloud.com', '47 Kingsford Junction', 49, 2, 979036216, 'rPScwXIy4bl';
EXEC Proj.[cp_create_agente] 852588589, 'Cecil Melland', '01/12/1964', 'cmelland1d@purevolume.com', '4 Fairview Center', 50, 3, 946150220, 'FLaFVK';
EXEC Proj.[cp_create_agente] 183565198, 'Sol Brunnen', '21/04/1974', 'sbrunnen1e@house.gov', '74339 Meadow Vale Hill', 51, 1, 925240160, '2yHUdY6kQ5O3';
EXEC Proj.[cp_create_agente] 667159285, 'Lucille Frascone', '08/09/1995', 'lfrascone1f@va.gov', '14078 Porter Center', 52, 2, 991286639, 'zUkcWNmAcrc';
EXEC Proj.[cp_create_agente] 757844249, 'Kiele Farens', '28/08/1978', 'kfarens1g@forbes.com', '29648 Armistice Trail', 53, 1, 974147385, 'IcKy1Bjwn';
EXEC Proj.[cp_create_agente] 895502376, 'Bernie Darke', '01/09/1985', 'bdarke1h@usatoday.com', '5 Jenna Park', 54, 1, 969167084, '2INAy7i';
EXEC Proj.[cp_create_agente] 212754060, 'Kissiah Madine', '09/02/1996', 'kmadine1i@ning.com', '5 Paget Hill', 55, 1, 944057318, 'EgxhBS18Q';
EXEC Proj.[cp_create_agente] 208507356, 'Orin Carlin', '21/03/1990', 'ocarlin1j@behance.net', '35 Warner Plaza', 56, 2, 911546837, 'PZEVeQNl5xw';
EXEC Proj.[cp_create_agente] 892976099, 'Vevay Lehon', '22/08/1981', 'vlehon1k@nature.com', '710 Clyde Gallagher Court', 57, 3, 915644749, 'IoMmYGFW0X';
EXEC Proj.[cp_create_agente] 139929176, 'Osborn Fieldgate', '02/08/2000', 'ofieldgate1l@opensource.org', '1 Tomscot Alley', 58, 2, 939371241, 'kl4CpnYyldej';
EXEC Proj.[cp_create_agente] 839752333, 'Janine Dyvoie', '10/06/1999', 'jodyvoie1m@indiegogo.com', '02285 Barby Circle', 59, 2, 968674624, '3mdXe5l';
EXEC Proj.[cp_create_agente] 172857127, 'Lucita Griniov', '06/03/1969', 'lgriniov1n@jiathis.com', '20 Bashford Pass', 60, 2, 962857072, 'BBTJBxFEqr';
EXEC Proj.[cp_create_agente] 331151250, 'Kathlin Sweedy', '03/06/1990', 'ksweedy1o@fastcompany.com', '60 John Wall Avenue', 61, 2, 922746941, '1rJJqq';
EXEC Proj.[cp_create_agente] 488288207, 'Tiffy Heck', '12/11/1981', 'theck1p@myspace.com', '23124 Westridge Pass', 62, 2, 927746703, 'oXQvFeg';
EXEC Proj.[cp_create_agente] 308240158, 'Kirk Lashford', '05/04/1988', 'klashford1q@photobucket.com', '9385 Logan Pass', 63, 2, 984328007, 'WBdFTF4';
EXEC Proj.[cp_create_agente] 036695807, 'Gib Semmens', '29/12/1995', 'gsemmens1r@google.ru', '1654 Johnson Court', 64, 1, 960806899, 'x82ZpkSTVd';
EXEC Proj.[cp_create_agente] 395665657, 'Nevsa Woodruffe', '13/02/1962', 'nwoodruffe1s@bbb.org', '6 8th Crossing', 65, 3, 905015484, 'VXejGBeQ';
EXEC Proj.[cp_create_agente] 840610452, 'Christiane Doggerell', '09/11/1983', 'cdoggerell1t@wufoo.com', '456 Scoville Park', 66, 1, 960267046, 'WTl0rqrLjp6';
EXEC Proj.[cp_create_agente] 429994442, 'Leilah Domenicis', '25/08/1954', 'lde1u@sciencedaily.com', '055 Sutherland Avenue', 67, 3, 916542076, 'shChG5Frymn';
EXEC Proj.[cp_create_agente] 627811395, 'Ernest Footitt', '21/05/1968', 'efootitt1v@deviantart.com', '39 Butternut Pass', 68, 2, 993687177, 'xXOLDuRTf';
EXEC Proj.[cp_create_agente] 552853479, 'Kelly Guinan', '04/06/1972', 'kguinan1w@mashable.com', '32333 Red Cloud Street', 69, 1, 947620634, 'EWpKY1P1r0V';
EXEC Proj.[cp_create_agente] 698738501, 'Daniel Allaway', '10/12/1994', 'dallaway1x@prlog.org', '2 Ronald Regan Point', 70, 2, 925622120, '7ILqzRTL';
EXEC Proj.[cp_create_agente] 923840584, 'Tanny Dainty', '07/07/1961', 'tdainty1y@myspace.com', '211 Gina Avenue', 71, 3, 948320375, '5bdOTFZw';
EXEC Proj.[cp_create_agente] 394182748, 'Trescha Gervaise', '17/09/1994', 'tgervaise1z@free.fr', '4 Hollow Ridge Trail', 72, 2, 992288051, 'tzHa5hTd0';
EXEC Proj.[cp_create_agente] 373747923, 'Christalle Stormes', '01/06/1995', 'cstormes20@mtv.com', '91655 Rieder Circle', 73, 3, 920672390, 'Xq1H7TAkoB6';
EXEC Proj.[cp_create_agente] 109615030, 'Ines Whitcomb', '20/09/1980', 'iwhitcomb21@chronoengine.com', '73774 Dryden Avenue', 74, 2, 983597838, 'Ptd0rNmf';
EXEC Proj.[cp_create_agente] 883600454, 'Mathias Colkett', '29/08/1969', 'mcolkett22@businesswire.com', '2788 Mccormick Center', 75, 1, 921998486, 'Z9iEPTbbVk0';
EXEC Proj.[cp_create_agente] 683583164, 'Jessalin Stanney', '02/05/1983', 'jstanney23@psu.edu', '980 Havey Place', 76, 1, 949644685, 'ZLD1kQCUwy';
EXEC Proj.[cp_create_agente] 602333088, 'Clemmie Hampshire', '19/07/1954', 'champshire24@google.com.hk', '91 Brown Park', 77, 3, 974301709, 'KSGq32';
EXEC Proj.[cp_create_agente] 234987319, 'Frankie Finlan', '22/09/1976', 'ffinlan25@pagesperso-orange.fr', '350 Katie Plaza', 78, 1, 963517900, 'e7cFuQFwzr1z';
EXEC Proj.[cp_create_agente] 399174182, 'Sawyere Mattys', '04/09/1971', 'smattys26@oracle.com', '39114 Washington Pass', 79, 1, 931428520, 'lWTCggi7';
EXEC Proj.[cp_create_agente] 121658580, 'Merrick Harbert', '20/01/1994', 'mharbert27@skyrock.com', '5199 Bluejay Plaza', 80, 3, 930167111, '4DnqDcQ';



-- 25 interessados apenas
EXEC Proj.[cp_create_interessado] 565239661, 'Adolf Gatheridge', '28/04/1952', 'agatheridge0@vk.com', '59 Tomscot Court', 938325655, '4pBtEm';
EXEC Proj.[cp_create_interessado] 093408945, 'Roxane Denerley', '14/04/1976', 'rdenerley1@cloudflare.com', '1619 Prairieview Way', 937261093, 'WlyXqxrO';
EXEC Proj.[cp_create_interessado] 841873538, 'Pearl Cracknell', '13/02/1990', 'pcracknell2@comsenz.com', '4 Cody Court', 930965537, 'C2EtG8u0K';
EXEC Proj.[cp_create_interessado] 027809680, 'Damian Garrie', '01/08/1978', 'dgarrie3@netscape.com', '80 Kim Avenue', 914967832, '6odeUKv';
EXEC Proj.[cp_create_interessado] 616067010, 'Melicent Attenbrow', '27/07/1997', 'mattenbrow4@forbes.com', '692 Springs Trail', 936196630, 'RDQuBN';
EXEC Proj.[cp_create_interessado] 011839475, 'Sam Dodell', '01/08/1969', 'sdodell5@wordpress.org', '2805 Swallow Drive', 938232740, 'GwaGbV5Yw';
EXEC Proj.[cp_create_interessado] 999967316, 'Ashlen McDyer', '21/08/1975', 'amcdyer6@cnet.com', '0 Stone Corner Trail', 908295466, 'OwSUBhFFT';
EXEC Proj.[cp_create_interessado] 076692416, 'Emyle Tunnicliff', '07/02/1992', 'etunnicliff7@live.com', '10 Onsgard Junction', 991592895, 'lfkXfF7wws';
EXEC Proj.[cp_create_interessado] 756655006, 'Ashby Beran', '31/07/1967', 'aberan8@yellowbook.com', '7 Mallory Park', 938135148, 'KqkM67rbKGqw';
EXEC Proj.[cp_create_interessado] 359510160, 'Claudine Chessell', '04/02/1961', 'cchessell9@latimes.com', '81639 Doe Crossing Center', 930998379, '5bBYuCz';
EXEC Proj.[cp_create_interessado] 618160555, 'Coriss Goakes', '17/06/1981', 'cgoakesa@shareasale.com', '17498 Vera Crossing', 974832478, 'zXy1p9Y3n';
EXEC Proj.[cp_create_interessado] 420882529, 'Bethany Martusewicz', '28/03/1995', 'bmartusewiczb@sogou.com', '4089 Esch Junction', 922436714, 'oWMFIktb2BE1';
EXEC Proj.[cp_create_interessado] 690270527, 'Damian Robinette', '02/11/1958', 'drobinettec@ask.com', '3282 Pond Place', 914672646, 'sQl2xIk';
EXEC Proj.[cp_create_interessado] 357781117, 'Tildi Philbrick', '07/01/1984', 'tphilbrickd@sitemeter.com', '6743 John Wall Alley', 986706225, 'SlJkcOfP5MVO';
EXEC Proj.[cp_create_interessado] 986196210, 'Ambrose Wall', '27/09/1992', 'awalle@wikia.com', '752 Milwaukee Terrace', 952997423, 'eNqanBp8R';
EXEC Proj.[cp_create_interessado] 117003456, 'Stafani Colecrough', '23/09/1974', 'scolecroughf@zimbio.com', '80503 Rutledge Parkway', 996763616, 'EVdr66lkO';
EXEC Proj.[cp_create_interessado] 491839661, 'Peadar Edlin', '08/11/1984', 'pedling@cam.ac.uk', '2 International Circle', 978884102, 'LhlTs6NOZi';
EXEC Proj.[cp_create_interessado] 788580857, 'Lebbie Hullbrook', '05/03/1966', 'lhullbrookh@weebly.com', '29 Longview Way', 916372192, 'yPUa2xtun';
EXEC Proj.[cp_create_interessado] 693134741, 'Sena McIlwraith', '24/10/1987', 'smcilwraithi@bloglovin.com', '19 Thackeray Parkway', 907197965, 'CI0Xul7zG';
EXEC Proj.[cp_create_interessado] 617854415, 'Catlee Haire', '24/02/2002', 'chairej@dion.ne.jp', '33 Vernon Plaza', 916730295, '5k58KMHW5l';
EXEC Proj.[cp_create_interessado] 494832346, 'Ivar Duggen', '27/06/1965', 'iduggen0@friendfeed.com', '2 Londonderry Hill', 962979674, '3Jryqd';
EXEC Proj.[cp_create_interessado] 031465667, 'Betsey Rosenstock', '21/05/1963', 'brosenstock1@jugem.jp', '7935 Havey Hill', 914299892, 'idcckWcvk1';
EXEC Proj.[cp_create_interessado] 373364968, 'Odille Walkden', '16/04/1971', 'owalkden2@netscape.com', '2 Holmberg Center', 948264007, 'zYgVM3e7EOJU';
EXEC Proj.[cp_create_interessado] 590156211, 'Mile McLeese', '28/05/1977', 'mmcleese3@storify.com', '575 Roth Pass', 980031000, 'a8CgqJ';
EXEC Proj.[cp_create_interessado] 543171381, 'Eugenio Commin', '19/08/1978', 'ecommin4@abc.net.au', '67 Sheridan Court', 955114000, 'VQvbUZg';
-- 8 interessados + proprietarios
EXEC Proj.[cp_create_interessado] 900862465, 'Marjory Blowing', '15/04/1984', 'mblowingo@vistaprint.com', '84945 Bayside Street', 979995812, 'zHIt6Del';
EXEC Proj.[cp_create_interessado] 672806706, 'Nancie Meagh', '25/05/1988', 'nmeaghn@indiatimes.com', '3844 Anniversary Point', 996209036, 'MIGyc2';
EXEC Proj.[cp_create_interessado] 739231581, 'Niel Bagot', '08/02/2001', 'nbagotm@addthis.com', '43707 Hallows Drive', 913165309, 'DSvwPIrNsZBs';
EXEC Proj.[cp_create_interessado] 455998693, 'Maible Rudledge', '14/12/1968', 'mrudledgel@usgs.gov', '358 Golf View Center', 968575680, 'Js8MXKEHUP9n';
EXEC Proj.[cp_create_interessado] 792808115, 'Darb Tomisch', '25/11/1991', 'dtomischk@twitter.com', '02498 Stone Corner Plaza', 960113559, 'FrtKilG';
EXEC Proj.[cp_create_interessado] 708093907, 'Biddie Quiddington', '08/02/1998', 'bquiddington0@businessweek.com', '6 Rigney Point', 992448524, 'Ye5gie';
EXEC Proj.[cp_create_interessado] 471172502, 'Cathi Elleray', '23/05/1967', 'celleray1@blog.com', '4 Evergreen Center', 969773496, 'u3nL0ArwBK2';
EXEC Proj.[cp_create_interessado] 637579252, 'Perceval Buttle', '22/06/1973', 'pbuttle2@narod.ru', '5 Nancy Lane', 972109190, 'tfxML3TVzpm';


-- 25 proprietarios apenas
EXEC Proj.[cp_create_proprietario] 823099525, 'Brew Simper', '15/02/1994', 'bsimper0@prlog.org', '83 Dorton Circle', 977905753, 121658580, 'BjXxm9rCWIlx';
EXEC Proj.[cp_create_proprietario] 015253293, 'Jarib Turfitt', '21/08/1999', 'jturfitt1@blog.com', '37504 Amoth Place', 963599014, 602333088, 'n0TeuaqMh';
EXEC Proj.[cp_create_proprietario] 171781978, 'Vaclav Keeling', '26/04/1999', 'vkeeling2@friendfeed.com', '8546 3rd Trail', 918501908, 109615030, 'nyd8OW';
EXEC Proj.[cp_create_proprietario] 876915089, 'Atalanta Binning', '22/05/1979', 'abinning3@cnn.com', '578 Warner Place', 900358687, 923840584, 'ddLhzXJNj';
EXEC Proj.[cp_create_proprietario] 922542934, 'Kassi McDougle', '14/04/1968', 'kmcdougle4@seattletimes.com', '1987 Merrick Place', 973627171, 552853479, 'UABkXJoxe';
EXEC Proj.[cp_create_proprietario] 966158937, 'Kit Winterton', '05/08/1998', 'kwinterton5@yellowpages.com', '5034 Maryland Park', 921991313, 036695807, 'P272Vn';
EXEC Proj.[cp_create_proprietario] 351592370, 'Kiley Brasseur', '14/12/1951', 'kbrasseur6@yahoo.co.jp', '60 Tennessee Point', 952368193, 172857127, '1C0NZ8';
EXEC Proj.[cp_create_proprietario] 514654614, 'Kip Gietz', '16/10/1999', 'kgietz7@auda.org.au', '44 Homewood Crossing', 945313882, 208507356, 'RFlL7AGzRX';
EXEC Proj.[cp_create_proprietario] 505642867, 'Gannie Dugget', '09/04/1974', 'gdugget8@people.com.cn', '0218 Bultman Parkway', 949459155, 212754060, 'Webl7Z';
EXEC Proj.[cp_create_proprietario] 228387272, 'Griselda Duffield', '21/06/1972', 'gduffield9@addthis.com', '494 Heath Center', 943816806, 895502376, 'sGmVXJUPpA4H';
EXEC Proj.[cp_create_proprietario] 651860666, 'Ophelie Heatlie', '28/09/1953', 'oheatliea@rambler.ru', '67 Heffernan Center', 948598708, 757844249, 'sQD4zg6TjB';
EXEC Proj.[cp_create_proprietario] 160172334, 'Crawford Matessian', '20/06/1957', 'cmatessianb@statcounter.com', '35 Lakewood Alley', 952885051, 183565198, 'BwEQHPEPx';
EXEC Proj.[cp_create_proprietario] 616265936, 'Sydelle Lassey', '23/10/1954', 'slasseyc@constantcontact.com', '1374 Anthes Circle', 939194550, 852588589, 'XEFFV9cAIN';
EXEC Proj.[cp_create_proprietario] 696942724, 'Savina Tatham', '22/02/1990', 'stathamd@google.com.au', '40 Nova Lane', 931964057, 646672914, 'K8ZlNI';
EXEC Proj.[cp_create_proprietario] 831440051, 'Robina Pudding', '25/11/2001', 'rpuddinge@google.ca', '25729 Cascade Court', 905701563, 470006152, 'H8Y7VSAG6o';
EXEC Proj.[cp_create_proprietario] 077851633, 'Cesar Bricknell', '28/10/1953', 'cbricknellf@phpbb.com', '5813 Hoepker Way', 991476771, 499800448, 'hWLj3wyMvd4h';
EXEC Proj.[cp_create_proprietario] 229608342, 'Vladimir Yonnie', '10/11/1970', 'vyonnieg@skype.com', '5374 Leroy Street', 958466902, 119650587, 'IuJ1CaDcYVz';
EXEC Proj.[cp_create_proprietario] 723466311, 'Orren Peirone', '22/08/1960', 'opeironeh@google.nl', '6864 Birchwood Place', 960926324, 372729290, 'siSSua7v';
EXEC Proj.[cp_create_proprietario] 093669376, 'Kirby Goldfinch', '12/10/1975', 'kgoldfinchi@bravesites.com', '8799 Forest Dale Road', 987383814, 648851106, 'S2YF0Cu5';
EXEC Proj.[cp_create_proprietario] 119768849, 'Joeann McCollum', '19/09/1999', 'jmccollumj@photobucket.com', '65203 Union Park', 978110069, 581353194, 'Rv3OG9';
EXEC Proj.[cp_create_proprietario] 354369842, 'Catharina Cheverton', '11/09/1962', 'ccheverton0@bing.com', '5 Lake View Street', 982690045, 121658580, 'z1NSf5qA';
EXEC Proj.[cp_create_proprietario] 750394566, 'Fair Balasin', '12/09/1989', 'fbalasin1@joomla.org', '6673 Hazelcrest Lane', 920964145, 399174182, 'Eh0BG3m';
EXEC Proj.[cp_create_proprietario] 051715700, 'Judi Morsom', '02/12/1992', 'jmorsom2@pen.io', '29 John Wall Junction', 964736416, 234987319, 'RLzgwR';
EXEC Proj.[cp_create_proprietario] 251796479, 'Remus Walter', '20/01/1961', 'rwalter3@shop-pro.jp', '857 Debs Terrace', 948009388, 883600454, '3zWmwyBJgugF';
EXEC Proj.[cp_create_proprietario] 478047643, 'Rosa Crackel', '28/06/1971', 'rcrackel4@pinterest.com', '21 Ryan Parkway', 980080548, 308240158, 'z9fEhozQll';
-- 8 sao proprietarios e interessados
EXEC Proj.[cp_create_proprietario] 792808115, 'Darb Tomisch', '25/11/1991', 'dtomischk@twitter.com', '02498 Stone Corner Plaza', 960113559, 478038352, 'zHIt6Del';
EXEC Proj.[cp_create_proprietario] 455998693, 'Maible Rudledge', '14/12/1968', 'mrudledgel@usgs.gov', '358 Golf View Center', 968575680, 631724018, 'MIGyc2';
EXEC Proj.[cp_create_proprietario] 739231581, 'Niel Bagot', '08/02/2001', 'nbagotm@addthis.com', '43707 Hallows Drive', 913165309, 036333143, 'DSvwPIrNsZBs';
EXEC Proj.[cp_create_proprietario] 672806706, 'Nancie Meagh', '25/05/1988', 'nmeaghn@indiatimes.com', '3844 Anniversary Point', 996209036, 722045350, 'Js8MXKEHUP9n';
EXEC Proj.[cp_create_proprietario] 900862465, 'Marjory Blowing', '15/04/1984', 'mblowingo@vistaprint.com', '84945 Bayside Street', 979995812, 697019923, 'FrtKilG';
EXEC Proj.[cp_create_proprietario] 708093907, 'Biddie Quiddington', '08/02/1998', 'bquiddington0@businessweek.com', '6 Rigney Point', 992448524, 637579252, 'Ye5gie';
EXEC Proj.[cp_create_proprietario] 471172502, 'Cathi Elleray', '23/05/1967', 'celleray1@blog.com', '4 Evergreen Center', 969773496, 331151250, 'u3nL0ArwBK2';
EXEC Proj.[cp_create_proprietario] 637579252, 'Perceval Buttle', '22/06/1973', 'pbuttle2@narod.ru', '5 Nancy Lane', 972109190, 172857127, 'tfxML3TVzpm';