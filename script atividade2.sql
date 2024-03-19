CREATE TABLE horario (
	ID  INTEGER PRIMARY KEY not NULL,
	curso int,
	materia int,
	diasem int,
	professor int,
	FOREIGN KEY (curso) REFERENCES curso(ID),
	FOREIGN KEY (materia) REFERENCES materia(ID),
	FOREIGN KEY (diasem) REFERENCES dia(ID),
	FOREIGN KEY (professor) REFERENCES professor(ID)
);


INSERT INTO horario VALUES
-u
(1, 1, 1, 1, 1),
(2, 1, 2, 1, 2),
(3, 1, 3, 2, 3),
(4, 1, 4, 3, 4),
(5, 1, 5, 3, 5),
(6, 1, 5, 4, 5),
(7, 1, 6, 4, 6),
(8, 1, 7, 5, 7);

DROP TABLE horario;

DROP TABLE professor;

create table professor (
	ID PRIMARY KEY NOT NULL,
	nome varchar (20)
);

CREATE TABLE curso (
	ID  INTEGER PRIMARY KEY not NULL,
	curso varchar (20)
);

CREATE TABLE dia (
	ID INTEGER PRIMARY KEY NOT NULL,
	diasem varchar (12)
);

CREATE TABLE materia (
	ID INTEGER PRIMARY key NOT NULL,
	  varchar (12)
);

INSERT INTO dia VALUES
(1, 'segunda-feira'),
(2, 'terça-feira'),
(3, 'quarta-feira'),
(4, 'quinta-feira'),
(5, 'sexta-feira');

INSERT INTO curso VALUES 
(1, 'adsma1'),
(2, 'adsma2'),
(3, 'adsma3'),
(4, 'adsma4'),
(5, 'adsma5'),
(6, 'adsma6'),
(7, 'segma1'),
(8, 'segma2'),
(9, 'segma3'),
(10, 'segma4'),
(11, 'segma5'),
(12, 'segma6');


INSERT INTO professor VALUES
(1, 'MarceloA'),
(2, 'Edison'),
(3, 'Gondo'),
(4, 'Amorim'),
(5, 'Humberto'),
(6, 'Fernanda'),
(7, 'Viotti'),
(8, 'Adilson'),
(9, 'Raquel'),
(10, 'Ronny'),
(11, 'Margareth'),
(12, 'Sônia'),
(13, 'Floriano'),
(14, 'Gallão'),
(15, 'CláudiaO'),
(16, 'PauloR'),
(17, 'MárciaM'),
(18, 'A Definir'),
(19, 'Luiz'),
(20, 'Miguel'),
(21, 'Furlan'),
(22, 'Désiré'),
(23, 'Cláudio'),
(24, 'Edna'),
(25, 'Reinaldo'),
(26, 'Baitz'),
(27, 'Eliane'),
(28, 'Claudemir'),
(29, 'Kronig'),
(30, 'Alan'),
(31, 'Aletéia'),
(32, 'Labrada'),
(33, 'Cabrini'),
(34, 'Jacinto'),
(35, 'Tânia'),
(36, 'Everson'),
(37, 'Nicolas'),
(38, 'Longato'),
(39, 'Izar'),
(40, 'Nilton'),
(41, 'Eliane'),
(42, 'Lilian'),
(43, 'Ediney'),
(44, 'Rivaldo');

INSERT INTO materia VALUES 
(1, 'LabHard'),
(2, 'MatDisc'),
(3, 'AdmGeral'),
(4, 'AOC'),
(5, 'ProgMic'),
(6, 'Ing I'),
(7, 'AlgLP'),
(8, 'SistInform'),
(9, 'EngSoft I'),
(10, 'ComExpr'),
(11, 'LingProg'),
(12, 'Ing II'),
(13, 'Calc'),
(14, 'Contab'),
(15, 'IHC'),
(16, 'SO I'),
(17, 'EngSoft II'),
(18, 'EstatAplic'),
(19, 'Ing III'),
(20, 'EconFin'),
(21, 'EstrDados'),
(22, 'SocTecn'),
(23, 'ProgOO'),
(24, 'SO II'),
(25, 'BD'),
(26, 'Ing IV'),
(27, 'ProgScript'),
(28, 'EngSoft III'),
(29, 'MPCT'),
(30, 'LabEngSoft'),
(31, 'SistDistr'),
(32, 'Redes'),
(33, 'SegInfo'),
(34, 'ProgLin'),
(35, 'Ing V'),
(36, 'ProgMain'),
(37, 'EticaRP'),
(38, 'IA'),
(39, 'GestEquip'),
(40, 'GestProj'),
(41, 'Empreend'),
(42, 'TopEsplnf'),
(43, 'Ing VI'),
(44, 'GestGovTI'),
(45, 'PrincSeg'),
(46, 'MPCT'),
(47, 'ComExpr I'),
(48, 'FundTI'),
(49, 'Prog I'),
(50, 'SO'),
(51, 'Prog II'),
(52, 'CalcDI'),
(53, 'TecRedes'),
(54, 'DSPTI'),
(55, 'ComExpr II'),
(56, 'ProbEstat'),
(57, 'Cript'),
(58, 'LabAdmSO'),
(59, 'AdmSO'),
(60, 'ProtRot'),
(61, 'GETI'),
(62, 'GovTI'),
(63, 'PISRC'),
(64, 'AGRiscos'),
(65, 'PolitSeg'),
(66, 'InfraFisRC'),
(67, 'FundPerFor'),
(68, 'FatHumSI'),
(69, 'AuditSI'),
(70, 'ProjRedes'),
(71, 'GerRedes'),
(72, 'RIPCN'),
(73, 'PTG I'),
(74, 'SSORC I'),
(75, 'DEPSI'),
(76, 'SegBD'),
(77, 'PTG II'),
(78, 'GSI'),
(79, 'SSORC II'),
(80, 'EstAvSI'),
(81, 'FDWeb');

///////////////////////////////////////////////////////////////////////
teste
Select curso.curso, materia.mat, dia.diasem, professor.nome from horario
inner join curso, materia, dia, professor ON curso.curso=horario.curso,
materia.mat=horario.materia,
dia.diasem=horario.diasem,
professor.nome=horario.professor;
