REM   Script: music
REM   FE01 – “Introdução ao RDBM Oracle”

CREATE TABLE AUTOR(  
	"ID_AUTOR" NUMBER(4,0) NOT NULL,   
	"NOME" VARCHAR2(200 BYTE) NOT NULL,   
		CONSTRAINT "AUTOR_PK" PRIMARY KEY ("ID_AUTOR")  
    );

CREATE TABLE EDITORA (  
	"ID_EDITORA" NUMBER(4,0) NOT NULL ENABLE,   
	"NOME" VARCHAR2(200 BYTE) NOT NULL ENABLE,   
		CONSTRAINT "EDITORA_PK" PRIMARY KEY ("ID_EDITORA")  
    );

CREATE TABLE GENERO (  
	"ID_GENERO" NUMBER(4,0) NOT NULL ENABLE,   
	"NOME" VARCHAR2(200 BYTE) NOT NULL ENABLE,   
		CONSTRAINT "GENERO_PK" PRIMARY KEY ("ID_GENERO")  
    );

CREATE TABLE SUPORTE (  
	"ID_SUPORTE" NUMBER(4,0) NOT NULL ENABLE,   
	"NOME" VARCHAR2(200 BYTE) NOT NULL ENABLE,   
		CONSTRAINT "SUPORTE_PK" PRIMARY KEY ("ID_SUPORTE")  
    );

CREATE TABLE TITULO(  
    "ID_TITULO" NUMBER(4,0) NOT NULL ENABLE,  
    "TITULO" VARCHAR(200) NOT NULL ENABLE,  
    "PRECO" NUMBER(6,2) NOT NULL ENABLE,  
    "DTA_COMPRA" DATE NOT NULL ENABLE,  
    "ID_EDITORA" NUMBER(4,0) NOT NULL ENABLE,  
    "ID_SUPORTE" NUMBER(4,0) NOT NULL ENABLE,  
    "ID_GENERO" NUMBER(4,0) NOT NULL ENABLE,  
    "ID_AUTOR" NUMBER(4,0) NOT NULL ENABLE,  
       CONSTRAINT "TITULO_PK" PRIMARY KEY ("ID_TITULO"),  
       CONSTRAINT "TITULO_FK1" FOREIGN KEY ("ID_EDITORA")  
        REFERENCES EDITORA("ID_EDITORA") ENABLE,  
        CONSTRAINT "TITULO_FK2" FOREIGN KEY ("ID_SUPORTE")  
            REFERENCES SUPORTE("ID_SUPORTE") ENABLE,  
        CONSTRAINT "TITULO_FK3" FOREIGN KEY ("ID_GENERO")  
            REFERENCES GENERO("ID_GENERO"),  
        CONSTRAINT "TITULO_FK4" FOREIGN KEY ("ID_AUTOR")  
            REFERENCES AUTOR("ID_AUTOR")ENABLE);

CREATE TABLE MUSICA (  
	"ID_MUSICA" NUMBER(4,0) NOT NULL ENABLE,   
	"NOME" VARCHAR2(50 BYTE) NOT NULL ENABLE,   
	"ID_AUTOR" NUMBER(4,0) NOT NULL ENABLE,   
	"ID_TITULO" NUMBER(4,0) NOT NULL ENABLE,   
		CONSTRAINT "MUSICA_PK" PRIMARY KEY ("ID_MUSICA"),   
		CONSTRAINT "MUSICA_FK1" FOREIGN KEY ("ID_AUTOR")  
			REFERENCES AUTOR ("ID_AUTOR") ENABLE,   
		CONSTRAINT "MUSICA_FK2" FOREIGN KEY ("ID_TITULO")  
			REFERENCES TITULO ("ID_TITULO") ENABLE  
   );

CREATE TABLE REVIEW (  
	"ID_REVIEW" NUMBER(4,0) NOT NULL ENABLE,   
	"ID_TITULO" NUMBER(4,0) NOT NULL ENABLE,   
	"DTA_REVIEW" DATE NOT NULL ENABLE,   
	"CONTEUDO" VARCHAR2(500 BYTE) NOT NULL ENABLE,   
		CONSTRAINT "REVIEW_PK" PRIMARY KEY ("ID_REVIEW"),  
		CONSTRAINT "REVIEW_FK1" FOREIGN KEY ("ID_TITULO")  
			REFERENCES TITULO ("ID_TITULO") ENABLE  
    );

insert into autor values (1, 'Alex Gill');

insert into autor values (2, 'Amanda Marshall');

insert into autor values (3, 'Ami Onuki');

insert into autor values (4, 'Alex Band');

insert into autor values (5, 'Tim Bendzko');

insert into autor values (6, 'Big Nelo');

insert into autor values (7, 'Bruno Branco');

insert into autor values (8, 'Enrique Bunbury');

insert into autor values (9, 'Nick Carter');

insert into autor values (10, 'Danni Carlos');

insert into autor values (11, 'Ewa Farna');

insert into autor values (12, 'Fiuk');

insert into autor values (13, 'Alejandro Fuentes');

insert into autor values (14, 'Alex Goot');

insert into autor values (15, 'Gotye');

insert into autor values (16, 'Daryl Hall');

insert into autor values (17, 'HÃ©lvio SodrÃ©');

insert into autor values (18, 'ChlÃ¶e Howl');

insert into autor values (19, 'Duncan James');

insert into autor values (20, 'Piret JÃ¤rvis');

insert into autor values (21, 'Kelly Osbourne');

insert into autor values (22, 'Triinu Kivilaan');

insert into autor values (23, 'Lenna Kuurmaa');

insert into autor values (24, 'Nick Lachey');

insert into autor values (25, 'Avril Lavigne');

insert into autor values (26, 'LetÃ­cia Navas');

insert into autor values (27, 'Liah');

insert into autor values (28, 'Lulu Santos');

insert into autor values (29, 'Marcus Menna');

insert into autor values (30, 'Marisa Liz');

insert into autor values (31, 'Matt Cardle');

insert into autor values (32, 'Casey McPherson');

insert into autor values (33, 'Megh Stock');

insert into autor values (34, 'Alyson Michalka');

insert into autor values (35, 'Amanda Michalka');

insert into autor values (36, 'Bea Miller');

insert into autor values (37, 'Alanis Morissette');

insert into autor values (38, 'Kjetil MÃ¸rland');

insert into autor values (39, 'Stevie Nicks');

insert into autor values (40, 'Ovelha (cantor)');

insert into autor values (41, 'Pali (cantor)');

insert into autor values (42, 'Paul Engemann');

insert into autor values (43, 'Paul G');

insert into autor values (44, 'Katy Perry');

insert into autor values (45, 'Pip (cantor)');

insert into autor values (46, 'Rocky Lynch');

insert into autor values (47, 'Susanna Hoffs');

insert into autor values (48, 'Ryan Tedder');

insert into autor values (49, 'Teru');

insert into autor values (50, 'Tomomi Kahala');

insert into autor values (51, 'Tsunku');

insert into autor values (52, 'Robbie Williams');

insert into autor values (53, 'Yndia');

insert into autor values (54, 'Paul Young');

insert into autor values (55, 'Yumi Yoshimura');

insert into autor values (56, 'Zuzana SmatanovÃ¡');

insert into autor values (57, 'Ahn Sojin');

insert into autor values (58, 'Ailee');

insert into autor values (59, 'Baby Soul');

insert into autor values (60, 'Bada (cantora)');

insert into autor values (61, 'Bae Sung-yeon');

insert into autor values (62, 'Baek A-yeon');

insert into autor values (63, 'BamBam');

insert into autor values (64, 'Bona (artista)');

insert into autor values (65, 'Max Changmin');

insert into autor values (66, 'Cho Hye-yeon');

insert into autor values (67, 'Cho Hyun-young');

insert into autor values (68, 'Cho Seung-hee');

insert into autor values (69, 'Dana (cantora sul-coreana)');

insert into autor values (70, 'David Oh');

insert into autor values (71, 'Dean (cantor)');

insert into autor values (72, 'E-Young');

insert into autor values (73, 'Eddy Kim');

insert into autor values (74, 'Kim Eli');

insert into autor values (75, 'Elkie (artista)');

insert into autor values (76, 'Eric Nam');

insert into autor values (77, 'G.NA');

insert into autor values (78, 'Go Eun-bi');

insert into autor values (79, 'Haeryung');

insert into autor values (80, 'Han Hye-ri');

insert into autor values (81, 'Han Sun-hwa');

insert into autor values (82, 'Heejin');

insert into autor values (83, 'Henry Lau');

insert into autor values (84, 'Heo Ga-yoon');

insert into autor values (85, 'Hong Yoo-kyung');

insert into autor values (86, 'Nichkhun');

insert into autor values (87, 'Hoya (artista)');

insert into autor values (88, 'Hwang Min-hyun');

insert into autor values (89, 'Hwasa');

insert into autor values (90, 'Hyun Seung-hee');

insert into autor values (91, 'Hyunjin');

insert into autor values (92, 'IU (artista)');

insert into autor values (93, 'J-Min');

insert into autor values (94, 'Jackson Wang');

insert into autor values (95, 'Kim Jae-joong');

insert into autor values (96, 'Jang Hyun-seung');

insert into autor values (97, 'JeA');

insert into autor values (98, 'Jeon So-mi');

insert into autor values (99, 'Jeon So-yeon');

insert into autor values (100, 'Jiyul Yang');

insert into autor values (101, 'Jo So-jin');

insert into autor values (102, 'Moon Jong-up');

insert into autor values (103, 'Jun Hyoseong');

insert into autor values (104, 'Jung Dae-hyun');

insert into autor values (105, 'Jung Eun-woo');

insert into autor values (106, 'Uhm Jung-hwa');

insert into autor values (107, 'Jung Jin-young');

insert into autor values (108, 'Jung Eun-ji');

insert into autor values (109, 'Jung Hana');

insert into autor values (110, 'Jung Yong-hwa');

insert into autor values (111, 'Juniel');

insert into autor values (112, 'Kahi');

insert into autor values (113, 'Kan Mi-youn');

insert into autor values (114, 'Kang Daniel');

insert into autor values (115, 'Kang Seung-yoon');

insert into autor values (116, 'Kangta');

insert into autor values (117, 'Kei (artista)');

insert into autor values (118, 'Ki Hui-hyeon');

insert into autor values (119, 'Kihyun');

insert into autor values (120, 'Kim Chung-ha');

insert into autor values (121, 'Kim Da-som');

insert into autor values (122, 'Kim Dong-wan');

insert into autor values (123, 'Kim Hyo-yeon');

insert into autor values (124, 'Kim Jong-kook');

insert into autor values (125, 'Kim Jung-woo');

insert into autor values (126, 'Kim Na-young');

insert into autor values (127, 'Kim So-hee (1995)');

insert into autor values (128, 'Kim So-hee (1999)');

insert into autor values (129, 'Kim So-hye');

insert into autor values (130, 'Kim Ye-won (artista)');

insert into autor values (131, 'Kim Chan-mi');

insert into autor values (132, 'Kim Jung-ah');

insert into autor values (133, 'Kim Seol-hyun');

insert into autor values (134, 'Koo Jun-hoe');

insert into autor values (135, 'Kwon So-hyun');

insert into autor values (136, 'BoA');

insert into autor values (137, 'Kwon Min-ah');

insert into autor values (138, 'Kwon Na-ra');

insert into autor values (139, 'Kwon Ri-se');

insert into autor values (140, 'Kyla Massie');

insert into autor values (141, 'Lee Gi-kwang');

insert into autor values (142, 'Lee Hae-in');

insert into autor values (143, 'Lee Hae-ri');

insert into autor values (144, 'Lee Joon');

insert into autor values (145, 'Lee Seung-hwan');

insert into autor values (146, 'Lee So-jung');

insert into autor values (147, 'Lee Su-hyun');

insert into autor values (148, 'Lee Sung-yeol');

insert into autor values (149, 'Lee Hi');

insert into autor values (150, 'Lee Hyori');

insert into autor values (151, 'Lee Kiseop');

insert into autor values (152, 'Leeteuk');

insert into autor values (153, 'Lim Na-young');

insert into autor values (154, 'Loco (rapper)');

insert into autor values (155, 'Kang Mi-na');

insert into autor values (156, 'Moonbyul');

insert into autor values (157, 'Son Ji-hyun');

insert into autor values (158, 'Namjoo');

insert into autor values (159, 'Nana (artista)');

insert into autor values (160, 'Narsha');

insert into autor values (161, 'NC.A');

insert into autor values (162, 'Lista de membros de NCT');

insert into autor values (163, 'NS Yoon-G');

insert into autor values (164, 'Oh Ha-young');

insert into autor values (165, 'Park Hyo-shin');

insert into autor values (166, 'Park Ji-hoon');

insert into autor values (167, 'Park Jin-young');

insert into autor values (168, 'Park Jung-ah');

insert into autor values (169, 'Park Si-yeon');

insert into autor values (170, 'Park Yoo-chun');

insert into autor values (171, 'Park Cho-rong');

insert into autor values (172, 'Park Cho-ah');

insert into autor values (173, 'Jay Park');

insert into autor values (174, 'Qri');

insert into autor values (175, 'Raina (artista)');

insert into autor values (176, 'Rena (cantora)');

insert into autor values (177, 'Roa (cantora)');

insert into autor values (178, 'Ryu Hyo-young');

insert into autor values (179, 'Kim Se-jeong');

insert into autor values (180, 'Seo Eun-kwang');

insert into autor values (181, 'Seo Yu-na');

insert into autor values (182, 'Shannon Williams');

insert into autor values (183, 'Shin Jong-kook');

insert into autor values (184, 'Shin Soo-hyun');

insert into autor values (185, 'Shin Hye-jeong');

insert into autor values (186, 'Shoo (cantora)');

insert into autor values (187, 'SinB');

insert into autor values (188, 'Solar (cantora)');

insert into autor values (189, 'Son Dong-woon');

insert into autor values (190, 'Son Dam-bi');

insert into autor values (191, 'Son Na-eun');

insert into autor values (192, 'Song Min-ho');

insert into autor values (193, 'Song Jieun');

insert into autor values (194, 'Sorn (artista)');

insert into autor values (195, 'Sowon');

insert into autor values (196, 'Tablo');

insert into autor values (197, 'Thunder (cantor)');

insert into autor values (198, 'Umji');

insert into autor values (199, 'Wheein');

insert into autor values (200, 'Xiah Junsu');

insert into autor values (201, 'Yehana');

insert into autor values (202, 'Yerin');

insert into autor values (203, 'Yong Jun-hyung');

insert into autor values (204, 'Yoo Yeon-jung');

insert into autor values (205, 'Yoo Young-jae');

insert into autor values (206, 'Yoo Ah-ra');

insert into autor values (207, 'Yoo Ji-ae');

insert into autor values (208, 'Yoon Chae-kyung');

insert into autor values (209, 'Yoon Doo-joon');

insert into autor values (210, 'Yoon Bo-mi');

insert into autor values (211, 'Youngjae');

insert into autor values (212, 'Yuha');

insert into autor values (213, 'Yunho');

insert into editora values (1, 'EMI');

insert into editora values (2, 'Sony');

insert into editora values (3, 'Valentim de Carvalho');

insert into editora values (4, 'Vevo');

insert into editora values (5, 'Apple');

insert into genero values (	1, 'Pop Rock');

insert into genero values (	2, 'K Pop');

insert into genero values (	3, 'Classica');

insert into genero values (	4, 'Heavy Metal');

insert into genero values (	5, 'Reagge');

insert into suporte values(1, 'VHS');

insert into suporte values(2, 'DVD');

insert into suporte values(3, 'Blue-Ray');

insert into suporte values(4, 'CD');

insert into suporte values(5, 'MP3');

insert into suporte values(6, 'Spotify');

insert into titulo values (	1, 'oh oh', 10, to_date('01-02-2010', 'dd-mm-yyyy'), 1, 4, 2, 1);

insert into titulo values (	2, 'oh oh oh', 10, to_date('10-01-2010', 'dd-mm-yyyy'), 2, 4, 3, 3);

insert into titulo values (	3, 'wit', 10, to_date('12-03-2000', 'dd-mm-yyyy'), 3, 5, 4, 5);

insert into titulo values (	4, 'oh oh oh oh', 10, to_date('27-04-2010', 'dd-mm-yyyy'), 4, 6, 5, 6);

insert into titulo values (	5, 'imma', 12, to_date('12-05-2010', 'dd-mm-yyyy'), 5, 5, 1, 8);

insert into titulo values (	6, 'boogie', 5, to_date('24-07-1970', 'dd-mm-yyyy'), 1, 1, 2, 7);

insert into titulo values (	7, 'club', 6, to_date('13-11-2000', 'dd-mm-yyyy'), 2, 1, 3, 99);

insert into titulo values (	8, 'can dig', 7, to_date('19-12-1960', 'dd-mm-yyyy'), 3, 2, 1, 44);

insert into titulo values (	9, 'like', 12, to_date('23-09-2000', 'dd-mm-yyyy'), 1, 3, 2, 65);

insert into titulo values (	10, 'love', 11, to_date('22-02-1970', 'dd-mm-yyyy'), 2, 4, 2, 45);

insert into titulo values (	11, 'dig', 9, to_date('18-01-1960', 'dd-mm-yyyy'), 3, 4, 3, 12);

insert into titulo values (	12, 'bum', 12, to_date('17-03-2000', 'dd-mm-yyyy'), 1, 3, 4, 56);

insert into titulo values (	13, 'girl', 3, to_date('04-04-2000', 'dd-mm-yyyy'), 2, 2, 5, 89);

insert into titulo values (	14, 'shit', 7, to_date('07-05-2000', 'dd-mm-yyyy'), 3, 1, 1, 77);

insert into titulo values (	15, 'go head', 20, to_date('08-07-2000', 'dd-mm-yyyy'), 4, 2, 2, 23);

insert into titulo values (	16, 'shorty', 19, to_date('11-11-2000', 'dd-mm-yyyy'), 5, 6, 3, 45);

insert into titulo values (	17, 'ima', 10, to_date('21-12-2000', 'dd-mm-yyyy'), 1, 4, 2, 22);

insert into titulo values (	18, 'pump', 10, to_date('27-09-1990', 'dd-mm-yyyy'), 2, 4, 3, 54);

insert into titulo values (	19, 'like', 10, to_date('01-02-2010', 'dd-mm-yyyy'), 3, 5, 4, 36);

insert into titulo values (	20, 'ass', 10, to_date('10-01-2000', 'dd-mm-yyyy'), 4, 6, 5, 65);

insert into titulo values (	21, 'pop', 12, to_date('12-03-2000', 'dd-mm-yyyy'), 5, 5, 1, 78);

insert into titulo values (	22, 'bitch', 5, to_date('27-04-2010', 'dd-mm-yyyy'), 3, 1, 2, 87);

insert into titulo values (	23, 'gon', 6, to_date('12-05-2000', 'dd-mm-yyyy'), 4, 1, 3, 90);

insert into titulo values (	24, 'rack', 7, to_date('24-07-2010', 'dd-mm-yyyy'), 5, 2, 1, 77);

insert into titulo values (	25, 'lil', 12, to_date('13-11-2000', 'dd-mm-yyyy'), 1, 3, 2, 56);

insert into titulo values (	26, 'dem', 11, to_date('19-12-2000', 'dd-mm-yyyy'), 2, 4, 3, 43);

insert into titulo values (	27, 'fuck', 9, to_date('23-09-2010', 'dd-mm-yyyy'), 3, 4, 1, 23);

insert into titulo values (	28, 'aint', 12, to_date('22-02-2000', 'dd-mm-yyyy'), 4, 3, 2, 11);

insert into titulo values (	29, 'wee', 3, to_date('18-01-2000', 'dd-mm-yyyy'), 5, 2, 2, 19);

insert into titulo values (	30, 'cuerpo', 7, to_date('17-03-1990', 'dd-mm-yyyy'), 4, 1, 3, 8);

insert into titulo values (	31, 'woman', 20, to_date('04-04-1970', 'dd-mm-yyyy'), 5, 2, 4, 98);

insert into titulo values (	32, 'bay', 19, to_date('07-05-2000', 'dd-mm-yyyy'), 1, 6, 5, 3);

insert into titulo values (	33, 'doo', 10, to_date('08-07-1970', 'dd-mm-yyyy'), 2, 4, 1, 76);

insert into titulo values (	34, 'nigga', 10, to_date('11-11-2000', 'dd-mm-yyyy'), 3, 4, 2, 72);

insert into titulo values (	35, 'ron', 10, to_date('21-12-1970', 'dd-mm-yyyy'), 4, 5, 3, 58);

insert into titulo values (	36, 'wiggle', 10, to_date('27-09-2010', 'dd-mm-yyyy'), 5, 6, 1, 89);

insert into titulo values (	37, 'go low', 12, to_date('01-02-2010', 'dd-mm-yyyy'), 1, 5, 2, 55);

insert into titulo values (	38, 'thong', 5, to_date('10-01-2000', 'dd-mm-yyyy'), 2, 1, 3, 99);

insert into titulo values (	39, 'oh whoa oh', 6, to_date('12-03-2010', 'dd-mm-yyyy'), 3, 1, 4, 44);

insert into titulo values (	40, 'love', 7, to_date('27-04-1980', 'dd-mm-yyyy'), 4, 2, 5, 22);

insert into titulo values (	41, 'will', 12, to_date('12-05-1990', 'dd-mm-yyyy'), 1, 3, 1, 33);

insert into titulo values (	42, 'get get get get', 11, to_date('24-07-1970', 'dd-mm-yyyy'), 2, 4, 2, 11);

insert into titulo values (	43, 'get', 9, to_date('13-11-2000', 'dd-mm-yyyy'), 3, 4, 3, 66);

insert into titulo values (	44, 'hands', 12, to_date('19-12-2010', 'dd-mm-yyyy'), 4, 3, 1, 77);

insert into titulo values (	45, 'float', 3, to_date('23-09-1970', 'dd-mm-yyyy'), 5, 2, 2, 71);

insert into titulo values (	46, 'boy', 7, to_date('22-02-2000', 'dd-mm-yyyy'), 5, 1, 3, 80);

insert into titulo values (	47, 'put hands', 20, to_date('18-01-2010', 'dd-mm-yyyy'), 5, 2, 1, 46);

insert into titulo values (	48, 'night', 19, to_date('17-03-1980', 'dd-mm-yyyy'), 4, 6, 2, 25);

insert into titulo values (	49, 'band', 14, to_date('04-04-1970', 'dd-mm-yyyy'), 2, 5, 3, 57);

insert into musica values (1, 'one get', 1,1);

insert into musica values (2, 'rays', 2,2);

insert into musica values (3, 'take stand', 3,3);

insert into musica values (4, 'lonely days', 4,4);

insert into musica values (5, 'love bad', 5,5);

insert into musica values (6, 'yeah oh yeah oh', 6,6);

insert into musica values (7, 'know gotta', 7,7);

insert into musica values (8, 'now see', 8,8);

insert into musica values (9, 'dance cant', 9,9);

insert into musica values (10, 'going back', 10,10);

insert into musica values (11, 'move make', 11,11);

insert into musica values (12, 'time ago', 12,12);

insert into musica values (13, 'man just', 13,13);

insert into musica values (14, 'explain', 14,14);

insert into musica values (15, 'boy cause', 15,15);

insert into musica values (16, 'break like', 16,16);

insert into musica values (17, 'come check', 17,17);

insert into musica values (18, 'control cause', 18,18);

insert into musica values (19, 'cry dont know', 19,19);

insert into musica values (20, 'dealin', 20,20);

insert into musica values (21, 'doc', 21,21);

insert into musica values (22, 'dont show', 22,22);

insert into musica values (23, 'eye can', 23,23);

insert into musica values (24, 'flashin', 24,24);

insert into musica values (25, 'girlfriend shes', 25,25);

insert into musica values (26, 'happy now', 26,26);

insert into musica values (27, 'heals', 27,27);

insert into musica values (28, 'hug kiss', 28,28);

insert into musica values (29, 'ill call', 29,29);

insert into musica values (30, 'im broken', 30,30);

insert into musica values (31, 'inside want', 31,31);

insert into musica values (32, 'jag', 32,32);

insert into musica values (33, 'kiss got', 33,33);

insert into musica values (34, 'knock door', 34,34);

insert into musica values (35, 'know inside', 35,35);

insert into musica values (36, 'know know let', 36,36);

insert into musica values (37, 'know stay', 37,37);

insert into musica values (38, 'leave can', 38,38);

insert into musica values (39, 'lets turn', 39,39);

insert into musica values (40, 'loss', 40,40);

insert into musica values (41, 'lovenow', 41,41);

insert into musica values (42, 'makes laugh', 42,42);

insert into musica values (43, 'night day im', 43,43);

insert into musica values (44, 'outfit', 44,44);

insert into musica values (45, 'people know', 45,45);

insert into musica values (46, 'poster', 46,46);

insert into musica values (47, 'shit get', 47,47);

insert into musica values (48, 'talk cant', 48,48);

insert into musica values (49, 'theres gotta', 49,49);

insert into musica values (50, 'time come around', 50,1);

insert into musica values (51, 'true got', 51,2);

insert into musica values (52, 'tryin keep', 52,3);

insert into musica values (53, 'uh now', 53,4);

insert into musica values (54, 'us say', 54,5);

insert into musica values (55, 'wanna start', 55,6);

insert into musica values (56, 'words got', 56,7);

insert into musica values (57, 'let em', 57,8);

insert into musica values (58, 'sha', 58,9);

insert into musica values (59, 'alright', 59,10);

insert into musica values (60, 'fucking', 60,11);

insert into musica values (61, 'away baby', 61,12);

insert into musica values (62, 'true im', 62,13);

insert into musica values (63, 'like yeah', 63,14);

insert into musica values (64, 'notice', 64,15);

insert into musica values (65, 'half', 65,16);

insert into musica values (66, 'account', 66,17);

insert into musica values (67, 'body move', 67,18);

insert into musica values (68, 'cheatin', 68,19);

insert into musica values (69, 'dont know baby', 69,20);

insert into musica values (70, 'ease pain', 70,21);

insert into musica values (71, 'heart break heart', 71,22);

insert into musica values (72, 'hey yo', 72,23);

insert into musica values (73, 'just close eyes', 73,24);

insert into musica values (74, 'just sure', 74,25);

insert into musica values (75, 'keep tryin', 75,26);

insert into musica values (76, 'man wants', 76,27);

insert into musica values (77, 'put put put', 77,28);

insert into musica values (78, 'see wonder', 78,29);

insert into musica values (79, 'seei', 79,30);

insert into musica values (80, 'someday youll', 80,31);

insert into musica values (81, 'talk baby', 81,32);

insert into musica values (82, 'things way', 82,33);

insert into musica values (83, 'think found', 83,34);

insert into musica values (84, 'turning back', 84,35);

insert into musica values (85, 'wanna dont', 85,36);

insert into musica values (86, 'well feelin', 86,37);

insert into musica values (87, 'stars', 87,38);

insert into musica values (88, 'early', 88,39);

insert into musica values (89, 'cat', 89,40);

insert into musica values (90, 'add', 90,41);

insert into musica values (91, 'ba ba ba', 91,42);

insert into musica values (92, 'happening', 92,43);

insert into musica values (93, 'smiled', 93,44);

insert into musica values (94, 'till end', 94,45);

insert into musica values (95, 'yeah think', 95,46);

insert into musica values (96, 'movie', 96,47);

insert into musica values (97, 'baby need', 97,48);

insert into musica values (98, 'cats', 98,49);

insert into musica values (99, 'ears', 99,1);

insert into musica values (100, 'day come', 1,2);

insert into musica values (101, 'day without', 2,3);

insert into musica values (102, 'fades', 3,4);

insert into musica values (103, 'feel just', 4,5);

insert into musica values (104, 'french', 5,6);

insert into musica values (105, 'let slip', 6,7);

insert into musica values (106, 'matter time', 7,8);

insert into musica values (107, 'please believe', 8,9);

insert into musica values (108, 'real feel', 9,10);

insert into musica values (109, 'will find way', 10,11);

insert into musica values (110, 'youre far', 11,12);

insert into musica values (111, 'smell', 12,13);

insert into musica values (112, 'darkest', 13,14);

insert into musica values (113, 'ill know', 14,15);

insert into musica values (114, 'said want', 15,16);

insert into musica values (115, 'sit back', 16,17);

insert into musica values (116, 'yeah let', 17,18);

insert into musica values (117, 'ever ever', 18,19);

insert into musica values (118, 'dont love', 19,20);

insert into musica values (119, 'wrote', 20,21);

insert into musica values (120, 'gonna rock', 21,22);

insert into musica values (121, 'got make', 22,23);

insert into musica values (122, 'just remember', 23,24);

insert into musica values (123, 'mind mind', 24,25);

insert into musica values (124, 'recall', 25,26);

insert into musica values (125, 'serious', 26,27);

insert into musica values (126, 'time oh', 27,28);

insert into musica values (127, 'im gonna', 28,29);

insert into musica values (128, 'happen', 29,30);

insert into musica values (129, 'always like', 30,31);

insert into musica values (130, 'central', 31,32);

insert into musica values (131, 'flashy', 32,33);

insert into musica values (132, 'helpless', 33,34);

insert into musica values (133, 'know keep', 34,35);

insert into musica values (134, 'like eagle', 35,36);

insert into musica values (135, 'love need love need', 36,37);

insert into musica values (136, 'need give', 37,38);

insert into musica values (137, 'said id', 38,39);

insert into musica values (138, 'serve', 39,40);

insert into musica values (139, 'hop', 40,41);

insert into musica values (140, 'heaven', 41,42);

insert into musica values (141, 'need oh', 42,43);

insert into musica values (142, 'along', 43,44);

insert into musica values (143, 'voice', 44,45);

insert into musica values (144, 'oughta', 45,46);

insert into musica values (145, 'faith', 46,47);

insert into musica values (146, 'bucks', 47,48);

insert into musica values (147, 'day know', 48,49);

insert into musica values (148, 'haha', 49,1);

insert into musica values (149, 'never felt way', 50,2);

insert into musica values (150, 'night life', 51,3);

insert into musica values (151, 'right need', 52,4);

insert into musica values (152, 'show youre', 53,5);

insert into musica values (153, 'stop wont', 54,6);

insert into musica values (154, 'tiger', 55,7);

insert into musica values (155, 'wont stay', 56,8);

insert into musica values (156, 'yeah ooh yeah', 57,9);

insert into musica values (157, 'note', 58,10);

insert into musica values (158, 'wreck', 59,11);

insert into musica values (159, 'dont let', 60,12);

insert into musica values (160, 'baby get', 61,13);

insert into musica values (161, 'know know know know', 62,14);

insert into musica values (162, 'baby baby ooo baby', 63,15);

insert into musica values (163, 'baby ooo baby', 64,16);

insert into musica values (164, 'baby ooo baby baby', 65,17);

insert into musica values (165, 'everybodys got', 66,18);

insert into musica values (166, 'ill play', 67,19);

insert into musica values (167, 'know weve', 68,20);

insert into musica values (168, 'make whole', 69,21);

insert into musica values (169, 'place go', 70,22);

insert into musica values (170, 'risin', 71,23);

insert into musica values (171, 'trapped', 72,24);

insert into musica values (172, 'yeah feel', 73,25);

insert into musica values (173, 'since', 74,26);

insert into musica values (174, 'cause dont wanna', 75,27);

insert into musica values (175, 'felt way', 76,28);

insert into musica values (176, 'fire light', 77,29);

insert into musica values (177, 'honest', 78,30);

insert into musica values (178, 'im done', 79,31);

insert into musica values (179, 'fade', 80,32);

insert into musica values (180, 'take higher', 81,33);

insert into musica values (181, 'one one', 82,34);

insert into musica values (182, 'make wanna', 83,35);

insert into musica values (183, 'can remember', 84,36);

insert into musica values (184, 'dance im', 85,37);

insert into musica values (185, 'dont bother', 86,38);

insert into musica values (186, 'ever told', 87,39);

insert into musica values (187, 'everything gonna', 88,40);

insert into musica values (188, 'eyes like', 89,41);

insert into musica values (189, 'far just', 90,42);

insert into musica values (190, 'found way', 91,43);

insert into musica values (191, 'girl shes', 92,44);

insert into musica values (192, 'going theres', 93,45);

insert into musica values (193, 'know shed', 94,46);

insert into musica values (194, 'make new', 95,47);

insert into musica values (195, 'need love love', 96,48);

insert into musica values (196, 'need youre', 97,49);

insert into musica values (197, 'never look', 98,1);

insert into musica values (198, 'point view', 99,2);

insert into musica values (199, 'want around', 24,3);

insert into musica values (200, 'youive', 25,4);

insert into musica values (201, 'youre much', 26,5);

insert into musica values (202, 'hours', 27,6);

insert into musica values (203, 'dancer', 28,7);

insert into musica values (204, 'dreams come', 29,8);

insert into musica values (205, 'got thing', 30,9);

insert into musica values (206, 'behind cause', 31,10);

insert into musica values (207, 'cause know dont', 32,11);

insert into musica values (208, 'dance wanna dance', 33,12);

insert into musica values (209, 'feel brand', 34,13);

insert into musica values (210, 'get oh', 35,14);

insert into musica values (211, 'just kiss', 36,15);

insert into musica values (212, 'knew id', 37,16);

insert into musica values (213, 'love weve', 38,17);

insert into musica values (214, 'make feel brand', 39,18);

insert into musica values (215, 'mend broken heart', 40,19);

insert into musica values (216, 'mind made', 41,20);

insert into musica values (217, 'oh give', 42,21);

insert into musica values (218, 'oh oh love', 43,22);

insert into musica values (219, 'smile face', 44,23);

insert into musica values (220, 'suitcase', 45,24);

insert into musica values (221, 'woman aint', 46,25);

insert into musica values (222, 'away take', 47,26);

insert into musica values (223, 'ive found', 48,27);

insert into musica values (224, 'know just', 49,28);

insert into musica values (225, 'babyyou', 50,29);

insert into musica values (226, 'just want know', 51,30);

insert into musica values (227, 'work', 52,31);

insert into musica values (228, 'aint getting', 53,32);

insert into musica values (229, 'baby good', 54,33);

insert into musica values (230, 'baby look', 55,34);

insert into musica values (231, 'find one', 56,35);

insert into musica values (232, 'love right now', 57,36);

insert into musica values (233, 'upon', 58,37);

insert into musica values (234, 'just like', 59,38);

insert into musica values (235, 'just keep', 60,39);

insert into musica values (236, 'growing', 61,40);

insert into musica values (237, 'even though', 62,41);

insert into musica values (238, 'burnin', 63,42);

insert into musica values (239, 'keys', 64,43);

insert into musica values (240, 'freedom', 65,44);

insert into musica values (241, 'beginning', 66,45);

insert into musica values (242, 'youre still', 67,46);

insert into musica values (243, 'call name', 68,47);

insert into musica values (244, 'paradise', 69,48);

insert into musica values (245, 'oh now', 70,49);

insert into musica values (246, 'many', 71,1);

insert into musica values (247, 'know feels', 72,2);

insert into musica values (248, 'mention', 73,3);

insert into musica values (249, 'take baby', 74,4);

insert into musica values (250, 'forgotten', 75,5);

insert into musica values (251, 'knocking', 76,6);

insert into musica values (252, 'want hear', 24,7);

insert into musica values (253, 'youll know', 25,8);

insert into musica values (254, 'addicted', 26,9);

insert into musica values (255, 'know will', 27,10);

insert into musica values (256, 'youve gone', 28,11);

insert into musica values (257, 'know want', 29,12);

insert into musica values (258, 'looking', 30,13);

insert into musica values (259, 'will see', 31,14);

insert into musica values (260, 'face', 32,15);

insert into musica values (261, 'fine youre', 33,16);

insert into musica values (262, 'just leave', 34,17);

insert into musica values (263, 'looking good', 35,18);

insert into musica values (264, 'square', 36,19);

insert into musica values (265, 'bang bang', 37,20);

insert into musica values (266, 'eight', 38,21);

insert into musica values (267, 'can cant', 39,22);

insert into musica values (268, 'planned', 40,23);

insert into musica values (269, 'want dont want', 41,24);

insert into musica values (270, 'yeah ill', 42,25);

insert into musica values (271, 'danced', 43,26);

insert into musica values (272, 'switch', 44,27);

insert into musica values (273, 'girl can', 45,28);

insert into musica values (274, 'got car', 46,29);

insert into musica values (275, 'huh uh huh uh', 47,30);

insert into musica values (276, 'im gonna tell', 48,31);

insert into musica values (277, 'must confess', 49,32);

insert into musica values (278, 'say hello', 50,33);

insert into musica values (279, 'done', 51,34);

insert into musica values (280, 'coco', 52,35);

insert into musica values (281, 'baby hold', 53,36);

insert into musica values (282, 'can stop', 54,37);

insert into musica values (283, 'girl ooh', 55,38);

insert into musica values (284, 'long can', 56,39);

insert into musica values (285, 'oh never', 57,40);

insert into musica values (286, 'rest', 58,41);

insert into musica values (287, 'back', 59,42);

insert into musica values (288, 'oh yeah', 60,43);

insert into musica values (289, 'im back', 61,44);

insert into musica values (290, 'know aint', 62,45);

insert into musica values (291, 'oh youre', 63,46);

insert into musica values (292, 'date', 64,47);

insert into musica values (293, 'like man', 65,48);

insert into musica values (294, 'north', 66,49);

insert into musica values (295, 'bullshit', 67,1);

insert into musica values (296, 'driver', 68,2);

insert into musica values (297, 'need now', 69,3);

insert into musica values (298, 'tear', 70,4);

insert into musica values (299, 'love somebody', 71,5);

insert into musica values (300, 'diamond', 72,6);

insert into musica values (301, 'aint gettin', 73,7);

insert into musica values (302, 'aint making', 74,8);

insert into musica values (303, 'around aint', 75,9);

insert into musica values (304, 'bad ass', 76,10);

insert into musica values (305, 'big things', 24,11);

insert into musica values (307, 'cant refuse', 26,13);

insert into musica values (308, 'cause right now', 27,14);

insert into musica values (309, 'chapter', 28,15);

insert into musica values (310, 'come stop', 29,16);

insert into musica values (311, 'country side', 30,17);

insert into musica values (312, 'coupe', 31,18);

insert into musica values (313, 'donkey', 32,19);

insert into musica values (314, 'dont respect', 33,20);

insert into musica values (315, 'dont wanna take', 34,21);

insert into musica values (316, 'drink cup', 35,22);

insert into musica values (317, 'easy find', 36,23);

insert into musica values (318, 'every dream', 37,24);

insert into musica values (319, 'every time look', 38,25);

insert into musica values (320, 'everything around', 39,26);

insert into musica values (321, 'floors', 40,27);

insert into musica values (322, 'flop', 41,28);

insert into musica values (323, 'follow heart', 42,29);

insert into musica values (324, 'gave everything', 43,30);

insert into musica values (325, 'head girl', 44,31);

insert into musica values (326, 'hear sing', 45,32);

insert into musica values (327, 'heres little', 46,33);

insert into musica values (328, 'im im im', 47,34);

insert into musica values (329, 'im six', 48,35);

insert into musica values (330, 'just case', 49,36);

insert into musica values (331, 'just shake', 50,37);

insert into musica values (332, 'keeps alive', 51,38);

insert into musica values (333, 'ladies gentlemen', 52,39);

insert into musica values (334, 'learned play', 53,40);

insert into musica values (335, 'let drive', 54,41);

insert into musica values (336, 'little girl youre', 55,42);

insert into musica values (337, 'living living', 56,43);

insert into musica values (338, 'looking girl', 57,44);

insert into musica values (339, 'love try', 58,45);

insert into musica values (340, 'makin money', 59,46);

insert into musica values (341, 'mean harm', 60,47);

insert into musica values (342, 'need hurry', 61,48);

insert into musica values (343, 'never trust', 62,49);

insert into musica values (344, 'new man', 63,1);

insert into musica values (345, 'now baby dont', 64,2);

insert into musica values (346, 'nowhere can', 65,3);

insert into musica values (347, 'oh must', 66,4);

insert into musica values (348, 'one cry', 67,5);

insert into musica values (349, 'ooh see', 68,6);

insert into musica values (350, 'party girls', 69,7);

insert into musica values (351, 'payed', 70,8);

insert into musica values (352, 'pistols', 71,9);

insert into musica values (353, 'play safe', 72,10);

insert into musica values (354, 'profit', 73,11);

insert into musica values (355, 'punch', 74,12);

insert into musica values (356, 'right dont know', 75,13);

insert into musica values (357, 'right now need', 76,14);

insert into musica values (358, 'route', 4,15);

insert into musica values (359, 'said im sorry', 5,16);

insert into musica values (360, 'said see', 6,17);

insert into musica values (361, 'see youd', 7,18);

insert into musica values (362, 'sexy body', 8,19);

insert into musica values (363, 'snap fingers', 9,20);

insert into musica values (364, 'someone come', 10,21);

insert into musica values (365, 'sorry things', 11,22);

insert into musica values (366, 'spitting', 12,23);

insert into musica values (367, 'still lonely', 13,24);

insert into musica values (368, 'story girl', 14,25);

insert into musica values (369, 'study', 15,26);

insert into musica values (370, 'sun come', 16,27);

insert into musica values (371, 'sun wont', 17,28);

insert into musica values (372, 'think gotta', 18,29);

insert into musica values (373, 'toes sand', 19,30);

insert into musica values (374, 'top bottom', 20,31);

insert into musica values (375, 'uh come', 21,32);

insert into musica values (376, 'uh got', 22,33);

insert into musica values (377, 'used sing', 4,34);

insert into musica values (378, 'visa', 5,35);

insert into musica values (379, 'walked life', 6,36);

insert into musica values (380, 'whats good', 7,37);

insert into musica values (381, 'whites', 8,38);

insert into musica values (382, 'youre kinda', 9,39);

insert into musica values (383, 'clouds', 10,40);

insert into musica values (384, 'gone youre', 11,41);

insert into musica values (385, 'wanna hold', 12,42);

insert into musica values (386, 'gonna break', 13,43);

insert into musica values (387, 'chillin', 14,44);

insert into musica values (388, 'pearl', 15,45);

insert into musica values (389, 'now now', 16,46);

insert into musica values (390, 'plans', 17,47);

insert into musica values (391, 'alright alright', 18,48);

insert into musica values (392, 'beautiful', 19,49);

insert into musica values (393, 'feels good', 20,1);

insert into musica values (394, 'girl world', 21,2);

insert into musica values (395, 'oh baby', 22,3);

insert into musica values (396, 'baby theres', 4,4);

insert into musica values (397, 'boy youre', 5,5);

insert into musica values (398, 'feeling im', 6,6);

insert into musica values (399, 'remix', 7,7);

insert into musica values (400, 'though im', 8,8);

insert into musica values (401, 'love get', 9,9);

insert into musica values (402, 'kiss', 10,10);

insert into musica values (403, 'mountain high', 11,11);

insert into musica values (404, 'na na na nana', 12,12);

insert into musica values (405, 'thank thank', 13,13);

insert into musica values (406, 'little time', 14,14);

insert into musica values (407, 'glad came', 15,15);

insert into musica values (408, 'now think', 16,16);

insert into musica values (409, 'cant hear', 17,17);

insert into musica values (410, 'dont mind', 18,18);

insert into musica values (411, 'cant sleep', 19,19);

insert into musica values (412, 'cause just', 20,20);

insert into musica values (413, 'im telling', 21,21);

insert into musica values (414, 'like see', 22,22);

insert into musica values (415, 'many things', 4,23);

insert into musica values (416, 'yeah youre', 5,24);

insert into musica values (417, 'magic', 6,25);

insert into musica values (418, 'sign', 7,26);

insert into musica values (419, 'alonei', 8,27);

insert into musica values (420, 'always come', 9,28);

insert into musica values (421, 'back watch', 10,29);

insert into musica values (422, 'believe cause', 11,30);

insert into musica values (423, 'bout im', 12,31);

insert into musica values (424, 'cant wait see', 13,32);

insert into musica values (425, 'come rescue', 14,33);

insert into musica values (426, 'come right', 15,34);

insert into musica values (427, 'cut like', 16,35);

insert into musica values (428, 'gave away', 17,36);

insert into musica values (429, 'im lost without', 18,37);

insert into musica values (430, 'lay low', 19,38);

insert into musica values (431, 'leave love', 20,39);

insert into musica values (432, 'like two', 21,40);

insert into musica values (433, 'matter youre', 22,41);

insert into musica values (434, 'must come', 11,42);

insert into musica values (435, 'notch', 12,43);

insert into musica values (436, 'smile smile', 13,44);

insert into musica values (437, 'sorta', 14,45);

insert into musica values (438, 'sun shines', 15,46);

insert into musica values (439, 'thisi', 16,47);

insert into musica values (440, 'away wont', 17,48);

insert into musica values (441, 'collar', 18,49);

insert into musica values (442, 'didnt think', 19,1);

insert into musica values (443, 'freakin', 20,2);

insert into musica values (444, 'front door', 21,3);

insert into musica values (445, 'gonna make move', 22,4);

insert into musica values (446, 'gotta stay', 4,5);

insert into musica values (447, 'man home', 5,6);

insert into musica values (448, 'something say', 6,7);

insert into musica values (449, 'stop wont', 7,8);

insert into musica values (450, 'weakness', 8,9);

insert into musica values (451, 'oclock', 9,10);

insert into musica values (452, 'wheels', 10,11);

insert into musica values (453, 'cherry', 11,12);

insert into musica values (454, 'front', 12,13);

insert into musica values (455, 'pull', 13,14);

insert into musica values (456, 'coffee', 14,15);

insert into musica values (457, 'get feeling', 11,16);

insert into musica values (458, 'said ill', 12,17);

insert into musica values (459, 'aye', 13,18);

insert into musica values (460, 'far', 14,19);

insert into musica values (461, 'girl wanna', 15,20);

insert into musica values (462, 'hold im', 16,21);

insert into musica values (463, 'wrist', 17,22);

insert into musica values (464, 'new york', 18,23);

insert into musica values (465, 'bein', 19,24);

insert into musica values (466, 'questions', 20,25);

insert into musica values (467, 'dont care', 21,26);

insert into musica values (468, 'playa', 22,27);

insert into musica values (469, 'see love', 4,28);

insert into musica values (470, 'give heart', 5,29);

insert into musica values (471, 'raised', 6,30);

insert into musica values (472, 'given', 7,31);

insert into musica values (473, 'another world', 8,32);

insert into musica values (474, 'baby maybe', 9,33);

insert into musica values (475, 'bit harder', 10,34);

insert into musica values (476, 'bruise', 11,35);

insert into musica values (477, 'cant imagine', 12,36);

insert into musica values (478, 'courage', 13,37);

insert into musica values (479, 'crazy know', 14,38);

insert into musica values (480, 'day said', 11,39);

insert into musica values (481, 'dontcha', 12,40);

insert into musica values (482, 'eager', 13,41);

insert into musica values (483, 'far behind', 14,42);

insert into musica values (484, 'forest', 15,43);

insert into musica values (485, 'hold heart', 16,44);

insert into musica values (486, 'im making', 17,45);

insert into musica values (487, 'know got right', 18,46);

insert into musica values (488, 'let go im', 19,47);

insert into musica values (489, 'lets go way', 20,48);

insert into musica values (490, 'love oh yeah', 21,49);

insert into musica values (491, 'masquerade', 22,43);

insert into musica values (492, 'maybe im just', 4,44);

insert into musica values (493, 'mewhy', 5,45);

insert into musica values (494, 'nothings wrong', 6,46);

insert into musica values (495, 'permission', 7,47);

insert into musica values (496, 'seven seas', 8,48);

insert into musica values (497, 'sights', 9,49);

insert into musica values (498, 'since went away', 10,43);

insert into musica values (499, 'stars shine', 11,44);

insert into musica values (500, 'tight im', 12,45);

insert into REVIEW values (1, 1, to_date('10-01-2017', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (2, 2, to_date('12-03-2018', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (3, 3, to_date('27-04-2017', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (4, 4, to_date('12-05-2014', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (5, 5, to_date('24-07-2015', 'dd-mm-yyyy'), 'OBRA PRIMA');

insert into REVIEW values (6, 6, to_date('13-11-2018', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (7, 7, to_date('19-12-2017', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (8, 8, to_date('23-09-2016', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (9, 9, to_date('22-02-2016', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (10, 10, to_date('18-01-2017', 'dd-mm-yyyy'), 'OBRA PRIMA');

insert into REVIEW values (11, 11, to_date('17-03-2018', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (12, 12, to_date('04-04-2017', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (13, 13, to_date('07-05-2014', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (14, 14, to_date('08-07-2015', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (15, 15, to_date('11-11-2018', 'dd-mm-yyyy'), 'OBRA PRIMA');

insert into REVIEW values (16, 16, to_date('21-12-2017', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (17, 17, to_date('27-09-2016', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (18, 18, to_date('01-02-2016', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (19, 19, to_date('10-01-2017', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (20, 20, to_date('12-03-2018', 'dd-mm-yyyy'), 'OBRA PRIMA');

insert into REVIEW values (21, 21, to_date('27-04-2017', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (22, 22, to_date('12-05-2014', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (23, 23, to_date('24-07-2015', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (24, 24, to_date('13-11-2018', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (25, 25, to_date('19-12-2017', 'dd-mm-yyyy'), 'OBRA PRIMA');

insert into REVIEW values (26, 26, to_date('23-09-2016', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (27, 27, to_date('10-01-2016', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (28, 28, to_date('12-03-2017', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (29, 29, to_date('27-04-2018', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (30, 30, to_date('12-05-2017', 'dd-mm-yyyy'), 'OBRA PRIMA');

insert into REVIEW values (31, 31, to_date('24-07-2014', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (32, 32, to_date('13-11-2015', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (33, 33, to_date('19-12-2018', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (34, 34, to_date('23-09-2017', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (35, 35, to_date('22-02-2016', 'dd-mm-yyyy'), 'OBRA PRIMA');

insert into REVIEW values (36, 36, to_date('18-01-2016', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (37, 37, to_date('17-03-2017', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (38, 38, to_date('04-04-2018', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (39, 39, to_date('07-05-2017', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (40, 40, to_date('08-07-2014', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (41, 41, to_date('11-11-2015', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (42, 42, to_date('21-12-2018', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (43, 43, to_date('27-09-2017', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (44, 44, to_date('01-02-2016', 'dd-mm-yyyy'), 'OBRA PRIMA');

insert into REVIEW values (45, 45, to_date('10-01-2016', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (46, 46, to_date('12-03-2017', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (47, 47, to_date('27-04-2018', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (48, 48, to_date('12-05-2017', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (49, 49, to_date('27-04-2014', 'dd-mm-yyyy'), 'OBRA PRIMA');

insert into REVIEW values (50, 1, to_date('12-05-2015', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (51, 2, to_date('24-07-2018', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (52, 3, to_date('13-11-2017', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (53, 4, to_date('19-12-2016', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (54, 5, to_date('23-09-2016', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (55, 23, to_date('22-02-2017', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (56, 24, to_date('18-01-2018', 'dd-mm-yyyy'), 'OBRA PRIMA');

insert into REVIEW values (57, 25, to_date('17-03-2017', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (58, 26, to_date('04-04-2014', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (59, 27, to_date('07-05-2015', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (60, 28, to_date('08-07-2018', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (61, 29, to_date('24-07-2017', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (62, 30, to_date('13-11-2016', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (63, 31, to_date('19-12-2016', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (64, 32, to_date('23-09-2017', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (65, 33, to_date('22-02-2018', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (66, 34, to_date('18-01-2017', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (67, 35, to_date('17-03-2014', 'dd-mm-yyyy'), 'OBRA PRIMA');

insert into REVIEW values (68, 36, to_date('04-04-2015', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (69, 37, to_date('07-05-2018', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (70, 38, to_date('12-04-2017', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (71, 39, to_date('24-05-2016', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (72, 40, to_date('13-04-2016', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (73, 41, to_date('19-05-2017', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (74, 42, to_date('23-07-2018', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (75, 43, to_date('22-11-2017', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (76, 44, to_date('18-12-2014', 'dd-mm-yyyy'), 'OBRA PRIMA');

insert into REVIEW values (77, 28, to_date('17-09-2015', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (78, 2, to_date('04-02-2018', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (79, 3, to_date('07-01-2017', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (80, 4, to_date('08-03-2016', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (81, 5, to_date('11-04-2016', 'dd-mm-yyyy'), 'OBRA PRIMA');

insert into REVIEW values (82, 6, to_date('21-05-2017', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (83, 7, to_date('27-07-2018', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (84, 8, to_date('01-07-2017', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (85, 9, to_date('10-11-2014', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (86, 10, to_date('12-12-2015', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (87, 11, to_date('27-09-2018', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (88, 12, to_date('12-02-2017', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (89, 13, to_date('27-01-2016', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (90, 14, to_date('12-03-2016', 'dd-mm-yyyy'), 'OBRA PRIMA');

insert into REVIEW values (91, 15, to_date('24-04-2017', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (92, 16, to_date('13-05-2018', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (93, 17, to_date('19-07-2017', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (94, 18, to_date('12-07-2014', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (95, 19, to_date('24-11-2015', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (96, 20, to_date('13-12-2018', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (97, 21, to_date('19-09-2017', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (98, 22, to_date('23-01-2016', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (99, 23, to_date('22-03-2016', 'dd-mm-yyyy'), 'OBRA PRIMA');

insert into REVIEW values (100, 24, to_date('18-04-2017', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (101, 25, to_date('17-05-2018', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (102, 26, to_date('04-07-2017', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (103, 27, to_date('07-07-2014', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (104, 28, to_date('08-11-2015', 'dd-mm-yyyy'), 'OBRA PRIMA');

insert into REVIEW values (105, 29, to_date('11-12-2018', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (106, 30, to_date('21-09-2017', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (107, 31, to_date('27-12-2016', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (108, 32, to_date('01-09-2016', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (109, 33, to_date('10-02-2017', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (110, 34, to_date('12-01-2018', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (111, 35, to_date('27-03-2017', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (112, 36, to_date('12-04-2014', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (113, 37, to_date('27-05-2015', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (114, 38, to_date('12-07-2018', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (115, 39, to_date('24-07-2017', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (116, 40, to_date('13-11-2016', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (117, 41, to_date('19-12-2016', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (118, 42, to_date('19-09-2017', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (119, 43, to_date('12-02-2018', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (120, 44, to_date('24-01-2017', 'dd-mm-yyyy'), 'OBRA PRIMA');

insert into REVIEW values (121, 28, to_date('13-03-2014', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (122, 29, to_date('19-04-2015', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (123, 30, to_date('23-05-2018', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (124, 31, to_date('22-07-2017', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (125, 32, to_date('18-07-2016', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (126, 33, to_date('17-11-2016', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (127, 34, to_date('04-12-2017', 'dd-mm-yyyy'), 'OBRA PRIMA');

insert into REVIEW values (128, 35, to_date('07-09-2018', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (129, 36, to_date('08-01-2017', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (130, 2, to_date('11-03-2014', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (131, 3, to_date('21-04-2015', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (132, 4, to_date('27-05-2018', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (133, 5, to_date('01-07-2017', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (134, 6, to_date('10-07-2016', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (135, 7, to_date('12-12-2016', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (136, 8, to_date('24-09-2017', 'dd-mm-yyyy'), 'OBRA PRIMA');

insert into REVIEW values (137, 9, to_date('13-02-2018', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (138, 10, to_date('19-01-2017', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (139, 11, to_date('23-03-2014', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (140, 12, to_date('22-04-2015', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (141, 13, to_date('18-05-2018', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (142, 14, to_date('17-07-2017', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (143, 15, to_date('04-07-2016', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (144, 16, to_date('07-11-2016', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (145, 17, to_date('08-12-2017', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (146, 18, to_date('24-09-2018', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (147, 19, to_date('13-02-2017', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (148, 20, to_date('19-01-2014', 'dd-mm-yyyy'), 'OBRA PRIMA');

insert into REVIEW values (149, 21, to_date('23-03-2015', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (150, 22, to_date('22-04-2018', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (151, 23, to_date('18-05-2017', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (152, 24, to_date('17-07-2016', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (153, 25, to_date('04-07-2016', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (154, 26, to_date('07-11-2017', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (155, 27, to_date('12-12-2018', 'dd-mm-yyyy'), 'OBRA PRIMA');

insert into REVIEW values (156, 28, to_date('24-09-2017', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (157, 29, to_date('13-01-2014', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (158, 30, to_date('12-03-2015', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (159, 31, to_date('24-04-2018', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (160, 2, to_date('13-05-2017', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (161, 3, to_date('19-07-2016', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (162, 4, to_date('23-07-2016', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (163, 5, to_date('22-12-2017', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (164, 6, to_date('18-09-2018', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (165, 7, to_date('17-02-2017', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (166, 8, to_date('04-01-2014', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (167, 9, to_date('07-03-2015', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (168, 10, to_date('08-04-2018', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (169, 11, to_date('24-05-2017', 'dd-mm-yyyy'), 'OBRA PRIMA');

insert into REVIEW values (170, 12, to_date('13-07-2016', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (171, 13, to_date('19-07-2016', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (172, 14, to_date('23-11-2017', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (173, 15, to_date('22-12-2018', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (174, 16, to_date('18-09-2017', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (175, 17, to_date('17-02-2014', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (176, 18, to_date('04-01-2015', 'dd-mm-yyyy'), 'OBRA PRIMA');

insert into REVIEW values (177, 19, to_date('07-03-2018', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (178, 20, to_date('12-04-2017', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (179, 21, to_date('24-05-2016', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (180, 22, to_date('13-07-2016', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (181, 23, to_date('08-07-2017', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (182, 24, to_date('24-11-2018', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (183, 25, to_date('13-12-2017', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (184, 26, to_date('19-09-2014', 'dd-mm-yyyy'), 'MAU');

insert into REVIEW values (185, 27, to_date('23-01-2015', 'dd-mm-yyyy'), 'PÃ‰SSIMO');

insert into REVIEW values (186, 28, to_date('22-03-2018', 'dd-mm-yyyy'), 'EXCELENTE');

insert into REVIEW values (187, 29, to_date('18-04-2017', 'dd-mm-yyyy'), 'OBRA PRIMA');

insert into REVIEW values (188, 30, to_date('17-05-2016', 'dd-mm-yyyy'), 'BOM');

insert into REVIEW values (189, 31, to_date('04-07-2016', 'dd-mm-yyyy'), 'MAU');

