CREATE PROCEDURE Proj.[create_agente]       -- criar agente
@nif INT(9), @nome VARCHAR(50), @email VARCHAR(50), @morada VARCHAR(50), @num_agente INT, @dep_no INT, @num_tlm INT(9)
AS 
	DECLARE @birth DATE
	SET @birth = SELECT GETDATE()
	insert into Proj.[pessoa] VALUES (@nif, @nome, @birth, @morada, @email, @num_tlm)
	insert into Proj.[agente] VALUES (@nif, @num_agente, @dep_no)

-- 80 agentes
EXEC Proj.[create_agente] (839684855, 'Therine Twiggins', 'ttwiggins0@blinklist.com', '9 Sheridan Parkway', 1, 3, 938325651);
EXEC Proj.[create_agente] (631748029, 'Kettie Borrott', 'kborrott1@w3.org', '15156 Eliot Junction', 2, 3, 937261093);
EXEC Proj.[create_agente] (683133443, 'Eward Napper', 'enapper2@pinterest.com', '5 Towne Park', 3, 2, 930965532);
EXEC Proj.[create_agente] (372273797, 'Waneta Banks', 'wbanks3@hatena.ne.jp', '26583 Spohn Terrace', 4, 2, 914967839);
EXEC Proj.[create_agente] (309192268, 'Ronica Poff', 'rpoff4@weather.com', '47 Porter Junction', 5, 2, 936196630);
EXEC Proj.[create_agente] (963467845, 'Araldo Spens', 'aspens5@naver.com', '05785 Stang Drive', 6, 3, 938232741);
EXEC Proj.[create_agente] (194114527, 'Leda Kerwood', 'lkerwood6@google.cn', '32 Reindahl Avenue', 7, 2, 908295464);
EXEC Proj.[create_agente] (023117550, 'Matthus Isted', 'misted7@techcrunch.com', '977 Spenser Drive', 8, 2, 991592893);
EXEC Proj.[create_agente] (859381020, 'Stanley Pedreschi', 'spedreschi8@dion.ne.jp', '94580 Elka Circle', 9, 3, 938135148);
EXEC Proj.[create_agente] (373381498, 'Thekla Piwell', 'tpiwell9@wired.com', '65635 Fair Oaks Terrace', 10, 1, 930998370);
EXEC Proj.[create_agente] (408325564, 'Klemens Alden', 'kaldena@naver.com', '5 Fuller Junction', 11, 3, 974832478);
EXEC Proj.[create_agente] (235517014, 'Karen Bromell', 'kbromellb@themeforest.net', '33374 Menomonie Parkway', 12, 1, 922436715);
EXEC Proj.[create_agente] (763670182, 'Nikkie O''Heaney', 'noheaneyc@storify.com', '1 Claremont Parkway', 13, 1, 914672644);
EXEC Proj.[create_agente] (178197861, 'Dom Murtimer', 'dmurtimerd@freewebs.com', '2965 Pine View Way', 14, 1, 986706223);
EXEC Proj.[create_agente] (619598735, 'Seth Nabbs', 'snabbse@gov.uk', '89 Roth Place', 15, 1, 952997422);
EXEC Proj.[create_agente] (780482914, 'Romona Denholm', 'rdenholmf@princeton.edu', '961 Ilene Drive', 16, 1, 996763611);
EXEC Proj.[create_agente] (268482736, 'Zarah Garnall', 'zgarnallg@msn.com', '1968 Burrows Junction', 17, 1, 978884103);
EXEC Proj.[create_agente] (289982188, 'Kassia Edelheid', 'kedelheidh@dion.ne.jp', '4291 Elgar Circle', 18, 3, 916372194);
EXEC Proj.[create_agente] (789300671, 'Vinnie Filchagin', 'vfilchagini@de.vu', '602 Prairieview Park', 19, 2, 907197965);
EXEC Proj.[create_agente] (061088842, 'Ainsley Cake', 'acakej@weibo.com', '6 Union Lane', 20, 1, 916730296);
EXEC Proj.[create_agente] (897342792, 'Collette Paty', 'cpatyk@yahoo.com', '17 Charing Cross Plaza', 21, 1, 962979677);
EXEC Proj.[create_agente] (580727968, 'Mano Blampey', 'mblampeyl@who.int', '0 South Circle', 22, 2, 914299898);
EXEC Proj.[create_agente] (116872071, 'Ynes Gravenell', 'ygravenellm@nytimes.com', '9081 Lerdahl Junction', 23, 3, 948264009);
EXEC Proj.[create_agente] (727298046, 'Sayre Tatem', 'statemn@squarespace.com', '80 Holmberg Place', 24, 3, 980031000);
EXEC Proj.[create_agente] (367583469, 'Ramona Dunford', 'rdunfordo@360.cn', '7127 Grim Hill', 25, 1, 955114009);
EXEC Proj.[create_agente] (218235937, 'Olia Dettmar', 'odettmarp@youtube.com', '9707 Granby Park', 26, 1, 979995818);
EXEC Proj.[create_agente] (633745594, 'Binnie Bowkley', 'bbowkleyq@cyberchimps.com', '1 Stang Crossing', 27, 2, 996209037);
EXEC Proj.[create_agente] (628692141, 'Harrie Sandhill', 'hsandhillr@creativecommons.org', '63 Trailsway Terrace', 28, 1, 913165306);
EXEC Proj.[create_agente] (184081898, 'Moe Shawyer', 'mshawyers@t.co', '09 Waywood Parkway', 29, 3, 968575685);
EXEC Proj.[create_agente] (371425792, 'Hamlen Chumley', 'hchumleyt@youtube.com', '10150 Prairieview Crossing', 30, 2, 960113554);
EXEC Proj.[create_agente] (825045183, 'Robinetta Middle', 'rmiddleu@ed.gov', '1753 Calypso Pass', 31, 3, 992448523);
EXEC Proj.[create_agente] (478038352, 'Benoit Kubista', 'bkubistav@t.co', '6 Muir Drive', 32, 3, 969773492);
EXEC Proj.[create_agente] (631724018, 'Langsdon Ellgood', 'lellgoodw@reverbnation.com', '420 4th Court', 33, 3, 972109191);
EXEC Proj.[create_agente] (036333143, 'Hobard Fick', 'hfickx@netvibes.com', '1 Hovde Lane', 34, 2, 978609823);
EXEC Proj.[create_agente] (722045350, 'Bonnibelle Matley', 'bmatleyy@mit.edu', '350 Menomonie Alley', 35, 3, 966106014);
EXEC Proj.[create_agente] (697019923, 'Germayne Canning', 'gcanningz@noaa.gov', '40182 Hoard Drive', 36, 2, 973955812);
EXEC Proj.[create_agente] (206033189, 'Justus Ashbridge', 'jashbridge10@moonfruit.com', '52 Arrowood Circle', 37, 2, 962638365);
EXEC Proj.[create_agente] (037541416, 'Bradley Copnar', 'bcopnar11@indiegogo.com', '78 Summer Ridge Pass', 38, 3, 924896877);
EXEC Proj.[create_agente] (379283802, 'Maximilianus Oddie', 'moddie12@csmonitor.com', '899 Waubesa Hill', 39, 2, 979140288);
EXEC Proj.[create_agente] (905778131, 'Trisha Mil', 'tmil13@topsy.com', '2787 Jay Hill', 40, 2, 991511508);
EXEC Proj.[create_agente] (112133071, 'Enoch Mapham', 'emapham14@macromedia.com', '171 Marcy Point', 41, 2, 975084100);
EXEC Proj.[create_agente] (581353194, 'Sergei Scoterbosh', 'sscoterbosh15@reverbnation.com', '8801 Hoard Park', 42, 3, 919737626);
EXEC Proj.[create_agente] (648851106, 'Ruthi Fesby', 'rfesby16@youtube.com', '2791 Anzinger Crossing', 43, 2, 935338652);
EXEC Proj.[create_agente] (372729290, 'Lishe Tabb', 'ltabb17@facebook.com', '6 Debra Plaza', 44, 1, 954434488);
EXEC Proj.[create_agente] (119650587, 'Tristam Girvin', 'tgirvin18@statcounter.com', '4 Hooker Plaza', 45, 1, 944471920);
EXEC Proj.[create_agente] (427825540, 'Jourdan Potbury', 'jpotbury19@weebly.com', '39 Welch Crossing', 46, 1, 962986421);
EXEC Proj.[create_agente] (499800448, 'Aleta Pedwell', 'apedwell1a@trellian.com', '86 Brickson Park Trail', 47, 2, 951916079);
EXEC Proj.[create_agente] (470006152, 'Cacilie Baulch', 'cbaulch1b@rambler.ru', '6 Sugar Court', 48, 2, 984051046);
EXEC Proj.[create_agente] (646672914, 'Thaddus Dabell', 'tdabell1c@soundcloud.com', '47 Kingsford Junction', 49, 2, 979036216);
EXEC Proj.[create_agente] (852588589, 'Cecil Melland', 'cmelland1d@purevolume.com', '4 Fairview Center', 50, 3, 946150220);
EXEC Proj.[create_agente] (183565198, 'Sol Brunnen', 'sbrunnen1e@house.gov', '74339 Meadow Vale Hill', 51, 1, 925240160);
EXEC Proj.[create_agente] (667159285, 'Lucille Frascone', 'lfrascone1f@va.gov', '14078 Porter Center', 52, 2, 991286639);
EXEC Proj.[create_agente] (757844249, 'Kiele Farens', 'kfarens1g@forbes.com', '29648 Armistice Trail', 53, 1, 974147385);
EXEC Proj.[create_agente] (895502376, 'Bernie Darke', 'bdarke1h@usatoday.com', '5 Jenna Park', 54, 1, 969167084);
EXEC Proj.[create_agente] (212754060, 'Kissiah Madine', 'kmadine1i@ning.com', '5 Paget Hill', 55, 1, 944057318);
EXEC Proj.[create_agente] (208507356, 'Orin Carlin', 'ocarlin1j@behance.net', '35 Warner Plaza', 56, 2, 911546837);
EXEC Proj.[create_agente] (892976099, 'Vevay Lehon', 'vlehon1k@nature.com', '710 Clyde Gallagher Court', 57, 3, 915644749);
EXEC Proj.[create_agente] (139929176, 'Osborn Fieldgate', 'ofieldgate1l@opensource.org', '1 Tomscot Alley', 58, 2, 939371241);
EXEC Proj.[create_agente] (839752333, 'Janine O''Dyvoie', 'jodyvoie1m@indiegogo.com', '02285 Barby Circle', 59, 2, 968674624);
EXEC Proj.[create_agente] (172857127, 'Lucita Griniov', 'lgriniov1n@jiathis.com', '20 Bashford Pass', 60, 2, 962857072);
EXEC Proj.[create_agente] (331151250, 'Kathlin Sweedy', 'ksweedy1o@fastcompany.com', '60 John Wall Avenue', 61, 2, 922746941);
EXEC Proj.[create_agente] (488288207, 'Tiffy Heck', 'theck1p@myspace.com', '23124 Westridge Pass', 62, 2, 927746703);
EXEC Proj.[create_agente] (308240158, 'Kirk Lashford', 'klashford1q@photobucket.com', '9385 Logan Pass', 63, 2, 984328007);
EXEC Proj.[create_agente] (036695807, 'Gib Semmens', 'gsemmens1r@google.ru', '1654 Johnson Court', 64, 1, 960806899);
EXEC Proj.[create_agente] (395665657, 'Nevsa Woodruffe', 'nwoodruffe1s@bbb.org', '6 8th Crossing', 65, 3, 905015484);
EXEC Proj.[create_agente] (840610452, 'Christiane Doggerell', 'cdoggerell1t@wufoo.com', '456 Scoville Park', 66, 1, 960267046);
EXEC Proj.[create_agente] (429994442, 'Leilah De Domenicis', 'lde1u@sciencedaily.com', '055 Sutherland Avenue', 67, 3, 916542076);
EXEC Proj.[create_agente] (627811395, 'Ernest Footitt', 'efootitt1v@deviantart.com', '39 Butternut Pass', 68, 2, 993687177);
EXEC Proj.[create_agente] (552853479, 'Kelly Guinan', 'kguinan1w@mashable.com', '32333 Red Cloud Street', 69, 1, 947620634);
EXEC Proj.[create_agente] (698738501, 'Daniel Allaway', 'dallaway1x@prlog.org', '2 Ronald Regan Point', 70, 2, 925622120);
EXEC Proj.[create_agente] (923840584, 'Tanny Dainty', 'tdainty1y@myspace.com', '211 Gina Avenue', 71, 3, 948320375);
EXEC Proj.[create_agente] (394182748, 'Trescha Gervaise', 'tgervaise1z@free.fr', '4 Hollow Ridge Trail', 72, 2, 992288051);
EXEC Proj.[create_agente] (373747923, 'Christalle Stormes', 'cstormes20@mtv.com', '91655 Rieder Circle', 73, 3, 920672390);
EXEC Proj.[create_agente] (109615030, 'Ines Whitcomb', 'iwhitcomb21@chronoengine.com', '73774 Dryden Avenue', 74, 2, 983597838);
EXEC Proj.[create_agente] (883600454, 'Mathias Colkett', 'mcolkett22@businesswire.com', '2788 Mccormick Center', 75, 1, 921998486);
EXEC Proj.[create_agente] (683583164, 'Jessalin Stanney', 'jstanney23@psu.edu', '980 Havey Place', 76, 1, 949644685);
EXEC Proj.[create_agente] (602333088, 'Clemmie Hampshire', 'champshire24@google.com.hk', '91 Brown Park', 77, 3, 974301709);
EXEC Proj.[create_agente] (234987319, 'Frankie Finlan', 'ffinlan25@pagesperso-orange.fr', '350 Katie Plaza', 78, 1, 963517900);
EXEC Proj.[create_agente] (399174182, 'Sawyere Mattys', 'smattys26@oracle.com', '39114 Washington Pass', 79, 1, 931428520);
EXEC Proj.[create_agente] (121658580, 'Merrick Harbert', 'mharbert27@skyrock.com', '5199 Bluejay Plaza', 80, 3, 930167111);


CREATE PROCEDURE Proj.[create_interessado]  -- criar interessado

@nif INT(9), @nome VARCHAR(50), @birth DATE, @email VARCHAR(50), @morada VARCHAR(50), @num_tlm INT(9)
AS
	-- se a pessoa já for proprietario, então já existe na tabela pessoa e não é preciso inserir
	IF NOT EXISTS(SELECT * FROM Proj.[proprietario] WHERE proprietario_nif = @nif)
		insert into Proj.[pessoa] VALUES (@nif, @nome, @birth, @morada, @email, @num_tlm)
	insert into Proj.[interessado] VALUES (@nif)

-- 25 interessados apenas
EXEC Proj.[create_interessado] (565239661, 'Adolf Gatheridge', '28/04/1952', 'agatheridge0@vk.com', '59 Tomscot Court', 938325655);
EXEC Proj.[create_interessado] (093408945, 'Roxane Denerley', '14/04/1976', 'rdenerley1@cloudflare.com', '1619 Prairieview Way', 937261093);
EXEC Proj.[create_interessado] (841873538, 'Pearl Cracknell', '13/02/1990', 'pcracknell2@comsenz.com', '4 Cody Court', 930965537);
EXEC Proj.[create_interessado] (027809680, 'Damian Garrie', '01/08/1978', 'dgarrie3@netscape.com', '80 Kim Avenue', 914967832);
EXEC Proj.[create_interessado] (616067010, 'Melicent Attenbrow', '27/07/1997', 'mattenbrow4@forbes.com', '692 Springs Trail', 936196630);
EXEC Proj.[create_interessado] (011839475, 'Sam Dodell', '01/08/1969', 'sdodell5@wordpress.org', '2805 Swallow Drive', 938232740);
EXEC Proj.[create_interessado] (999967316, 'Ashlen McDyer', '21/08/1975', 'amcdyer6@cnet.com', '0 Stone Corner Trail', 908295466);
EXEC Proj.[create_interessado] (076692416, 'Emyle Tunnicliff', '07/02/1992', 'etunnicliff7@live.com', '10 Onsgard Junction', 991592895);
EXEC Proj.[create_interessado] (756655006, 'Ashby Beran', '31/07/1967', 'aberan8@yellowbook.com', '7 Mallory Park', 938135148);
EXEC Proj.[create_interessado] (359510160, 'Claudine Chessell', '04/02/1961', 'cchessell9@latimes.com', '81639 Doe Crossing Center', 930998379);
EXEC Proj.[create_interessado] (618160555, 'Coriss Goakes', '17/06/1981', 'cgoakesa@shareasale.com', '17498 Vera Crossing', 974832478);
EXEC Proj.[create_interessado] (420882529, 'Bethany Martusewicz', '28/03/1995', 'bmartusewiczb@sogou.com', '4089 Esch Junction', 922436714);
EXEC Proj.[create_interessado] (690270527, 'Damian Robinette', '02/11/1958', 'drobinettec@ask.com', '3282 Pond Place', 914672646);
EXEC Proj.[create_interessado] (357781117, 'Tildi Philbrick', '07/01/1984', 'tphilbrickd@sitemeter.com', '6743 John Wall Alley', 986706225);
EXEC Proj.[create_interessado] (986196210, 'Ambrose Wall', '27/09/1992', 'awalle@wikia.com', '752 Milwaukee Terrace', 952997423);
EXEC Proj.[create_interessado] (117003456, 'Stafani Colecrough', '23/09/1974', 'scolecroughf@zimbio.com', '80503 Rutledge Parkway', 996763616);
EXEC Proj.[create_interessado] (491839661, 'Peadar Edlin', '08/11/1984', 'pedling@cam.ac.uk', '2 International Circle', 978884102);
EXEC Proj.[create_interessado] (788580857, 'Lebbie Hullbrook', '05/03/1966', 'lhullbrookh@weebly.com', '29 Longview Way', 916372192);
EXEC Proj.[create_interessado] (693134741, 'Sena McIlwraith', '24/10/1987', 'smcilwraithi@bloglovin.com', '19 Thackeray Parkway', 907197965);
EXEC Proj.[create_interessado] (617854415, 'Catlee Haire', '24/02/2002', 'chairej@dion.ne.jp', '33 Vernon Plaza', 916730295);
EXEC Proj.[create_interessado] (494832346, 'Ivar Duggen', '27/06/1965', 'iduggen0@friendfeed.com', '2 Londonderry Hill', 962979674);
EXEC Proj.[create_interessado] (031465667, 'Betsey Rosenstock', '21/05/1963', 'brosenstock1@jugem.jp', '7935 Havey Hill', 914299892);
EXEC Proj.[create_interessado] (373364968, 'Odille Walkden', '16/04/1971', 'owalkden2@netscape.com', '2 Holmberg Center', 948264007);
EXEC Proj.[create_interessado] (590156211, 'Mile McLeese', '28/05/1977', 'mmcleese3@storify.com', '575 Roth Pass', 980031000);
EXEC Proj.[create_interessado] (543171381, 'Eugenio Commin', '19/08/1978', 'ecommin4@abc.net.au', '67 Sheridan Court', 955114000);
-- 8 interessados + proprietarios
EXEC Proj.[create_interessado] (900862465, 'Marjory Blowing', '15/04/1984', 'mblowingo@vistaprint.com', '84945 Bayside Street', 979995812);
EXEC Proj.[create_interessado] (672806706, 'Nancie Meagh', '25/05/1988', 'nmeaghn@indiatimes.com', '3844 Anniversary Point', 996209036);
EXEC Proj.[create_interessado] (739231581, 'Niel Bagot', '08/02/2001', 'nbagotm@addthis.com', '43707 Hallows Drive', 913165309);
EXEC Proj.[create_interessado] (455998693, 'Maible Rudledge', '14/12/1968', 'mrudledgel@usgs.gov', '358 Golf View Center', 968575680);
EXEC Proj.[create_interessado] (792808115, 'Darb Tomisch', '25/11/1991', 'dtomischk@twitter.com', '02498 Stone Corner Plaza', 960113559);
EXEC Proj.[create_interessado] (708093907, 'Biddie Quiddington', '08/02/1998', 'bquiddington0@businessweek.com', '6 Rigney Point', 992448524);
EXEC Proj.[create_interessado] (471172502, 'Cathi Elleray', '23/05/1967', 'celleray1@blog.com', '4 Evergreen Center', 969773496);
EXEC Proj.[create_interessado] (637579252, 'Perceval Buttle', '22/06/1973', 'pbuttle2@narod.ru', '5 Nancy Lane', 972109190);


CREATE PROCEDURE Proj.[create_proprietario] -- criar proprietarios

@nif INT(9), @nome VARCHAR(50), @birth DATE, @email VARCHAR(50), @morada VARCHAR(50), @num_tlm INT(9), @agente_nif INT(9)
AS
	-- se a pessoa já for proprietario, então já existe na tabela pessoa e não é preciso inserir
	IF NOT EXISTS(SELECT * FROM Proj.[interessado] WHERE interessado_nif = @nif)
		insert into Proj.[pessoa] VALUES (@nif, @nome, @birth, @morada, @email, @num_tlm)
	insert into Proj.[proprietario] VALUES (@nif, @agente_nif)

-- 25 proprietarios apenas
EXEC Proj.[create_proprietario] (823099525, 'Brew Simper', '15/02/1994', 'bsimper0@prlog.org', '83 Dorton Circle', 977905753, 121658580);
EXEC Proj.[create_proprietario] (015253293, 'Jarib Turfitt', '21/08/1999', 'jturfitt1@blog.com', '37504 Amoth Place', 963599014, 602333088);
EXEC Proj.[create_proprietario] (171781978, 'Vaclav Keeling', '26/04/1999', 'vkeeling2@friendfeed.com', '8546 3rd Trail', 918501908, 109615030);
EXEC Proj.[create_proprietario] (876915089, 'Atalanta Binning', '22/05/1979', 'abinning3@cnn.com', '578 Warner Place', 900358687, 923840584);
EXEC Proj.[create_proprietario] (922542934, 'Kassi McDougle', '14/04/1968', 'kmcdougle4@seattletimes.com', '1987 Merrick Place', 973627171, 552853479);
EXEC Proj.[create_proprietario] (966158937, 'Kit Winterton', '05/08/1998', 'kwinterton5@yellowpages.com', '5034 Maryland Park', 921991313, 036695807);
EXEC Proj.[create_proprietario] (351592370, 'Kiley Brasseur', '14/12/1951', 'kbrasseur6@yahoo.co.jp', '60 Tennessee Point', 952368193, 172857127);
EXEC Proj.[create_proprietario] (514654614, 'Kip Gietz', '16/10/1999', 'kgietz7@auda.org.au', '44 Homewood Crossing', 945313882, 208507356);
EXEC Proj.[create_proprietario] (505642867, 'Gannie Dugget', '09/04/1974', 'gdugget8@people.com.cn', '0218 Bultman Parkway', 949459155, 212754060);
EXEC Proj.[create_proprietario] (228387272, 'Griselda Duffield', '21/06/1972', 'gduffield9@addthis.com', '494 Heath Center', 943816806, 895502376);
EXEC Proj.[create_proprietario] (651860666, 'Ophelie Heatlie', '28/09/1953', 'oheatliea@rambler.ru', '67 Heffernan Center', 948598708, 757844249);
EXEC Proj.[create_proprietario] (160172334, 'Crawford Matessian', '20/06/1957', 'cmatessianb@statcounter.com', '35 Lakewood Alley', 952885051, 183565198);
EXEC Proj.[create_proprietario] (616265936, 'Sydelle Lassey', '23/10/1954', 'slasseyc@constantcontact.com', '1374 Anthes Circle', 939194550, 852588589);
EXEC Proj.[create_proprietario] (696942724, 'Savina Tatham', '22/02/1990', 'stathamd@google.com.au', '40 Nova Lane', 931964057, 646672914);
EXEC Proj.[create_proprietario] (831440051, 'Robina Pudding', '25/11/2001', 'rpuddinge@google.ca', '25729 Cascade Court', 905701563, 470006152);
EXEC Proj.[create_proprietario] (077851633, 'Cesar Bricknell', '28/10/1953', 'cbricknellf@phpbb.com', '5813 Hoepker Way', 991476771, 499800448);
EXEC Proj.[create_proprietario] (229608342, 'Vladimir Yonnie', '10/11/1970', 'vyonnieg@skype.com', '5374 Leroy Street', 958466902, 119650587);
EXEC Proj.[create_proprietario] (723466311, 'Orren Peirone', '22/08/1960', 'opeironeh@google.nl', '6864 Birchwood Place', 960926324, 372729290);
EXEC Proj.[create_proprietario] (093669376, 'Kirby Goldfinch', '12/10/1975', 'kgoldfinchi@bravesites.com', '8799 Forest Dale Road', 987383814, 648851106);
EXEC Proj.[create_proprietario] (119768849, 'Joeann McCollum', '19/09/1999', 'jmccollumj@photobucket.com', '65203 Union Park', 978110069, 581353194);
EXEC Proj.[create_proprietario] (354369842, 'Catharina Cheverton', '11/09/1962', 'ccheverton0@bing.com', '5 Lake View Street', 982690045, 121658580);
EXEC Proj.[create_proprietario] (750394566, 'Fair Balasin', '12/09/1989', 'fbalasin1@joomla.org', '6673 Hazelcrest Lane', 920964145, 399174182);
EXEC Proj.[create_proprietario] (051715700, 'Judi Morsom', '02/12/1992', 'jmorsom2@pen.io', '29 John Wall Junction', 964736416, 234987319);
EXEC Proj.[create_proprietario] (251796479, 'Remus Walter', '20/01/1961', 'rwalter3@shop-pro.jp', '857 Debs Terrace', 948009388, 883600454);
EXEC Proj.[create_proprietario] (478047643, 'Rosa Crackel', '28/06/1971', 'rcrackel4@pinterest.com', '21 Ryan Parkway', 980080548, 308240158);
-- 8 sao proprietarios e interessados
EXEC Proj.[create_proprietario] (792808115, 'Darb Tomisch', '25/11/1991', 'dtomischk@twitter.com', '02498 Stone Corner Plaza', 960113559, 478038352);
EXEC Proj.[create_proprietario] (455998693, 'Maible Rudledge', '14/12/1968', 'mrudledgel@usgs.gov', '358 Golf View Center', 968575680, 631724018);
EXEC Proj.[create_proprietario] (739231581, 'Niel Bagot', '08/02/2001', 'nbagotm@addthis.com', '43707 Hallows Drive', 913165309, 036333143)
EXEC Proj.[create_proprietario] (672806706, 'Nancie Meagh', '25/05/1988', 'nmeaghn@indiatimes.com', '3844 Anniversary Point', 996209036, 722045350)
EXEC Proj.[create_proprietario] (900862465, 'Marjory Blowing', '15/04/1984', 'mblowingo@vistaprint.com', '84945 Bayside Street', 979995812, 697019923);
EXEC Proj.[create_proprietario] (708093907, 'Biddie Quiddington', '08/02/1998', 'bquiddington0@businessweek.com', '6 Rigney Point', 992448524, 637579252);
EXEC Proj.[create_proprietario] (471172502, 'Cathi Elleray', '23/05/1967', 'celleray1@blog.com', '4 Evergreen Center', 969773496, 331151250);
EXEC Proj.[create_proprietario] (637579252, 'Perceval Buttle', '22/06/1973', 'pbuttle2@narod.ru', '5 Nancy Lane', 972109190, 172857127);