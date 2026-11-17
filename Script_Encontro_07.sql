USE DB_T05429_MAURICIO_ONISHI;

/*
create table PLAYER (
ID int auto_increment primary key,
NAME varchar(100) not null,
AGE int,
POSITION varchar(50),
SALARY decimal(10,2),
TEAM_ID int
);
*/

create table TEAM (
ID int auto_increment primary key,
NAME varchar(100) not null,
CITY varchar(100),
FOUNDATION_YEAR int,
STADIUM varchar(100)
);

create table MATCHES (
ID int auto_increment primary key,
HOME_TEAM_ID int,
AWAY_TEAM_ID int,
MATCH_DATE date,
HOME_SCORE int,
AWAY_SCORE int,
STADIUM varchar(100)
);

-- DADOS DA TABELA TEAM

insert into TEAM (NAME, CITY, FOUNDATION_YEAR, STADIUM) value
('Flamengo', 'Rio de Janeiro', 1895, 'Maracanã'),
('Vasco da Gama', 'Rio de Janeiro', 1898, 'São Januário'),
('Fluminense', 'Rio de Janeiro', 1902, 'Maracanã');

INSERT INTO TEAM VALUES
(NULL, 'Corinthians', 'São Paulo', 1910, 'Neo Química Arena'),
(NULL, 'Palmeiras', 'São Paulo', 1914, 'Allianz Parque');

-- DADOS DA TABELA PLAYER

insert into PLAYER (NAME, AGE, POSITION, SALARY, TEAM_ID) value
('Pedro', 28, 'Atacante', 150.000, 1),
('Matheus Gonçalves', 20, 'Meio-campista', 50.000, 1),
('Philippe Coutinho', 33, 'Meio-campista', 200.000, 2);

INSERT INTO PLAYER VALUES
(NULL, 'Rayan', 19, 'Atacante', 80.000, 2),
(NULL, 'Germán Cano', 38, 'Atacante', 180.000, 3);
