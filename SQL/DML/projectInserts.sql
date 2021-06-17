-- INSERTS

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
INSERT INTO Proj.[tipoHabitacional] (id, designacao) values (3, 'casa');
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