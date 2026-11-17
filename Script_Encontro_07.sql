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

-- Complemento exercício (IS NULL)
INSERT INTO TEAM VALUES
(NULL, 'São Paulo', null, 1930, 'Morumbis');

-- DADOS DA TABELA PLAYER

insert into PLAYER (NAME, AGE, POSITION, SALARY, TEAM_ID) value
('Pedro', 28, 'Atacante', 150.000, 1),
('Matheus Gonçalves', 20, 'Meio-campista', 50.000, 1),
('Philippe Coutinho', 33, 'Meio-campista', 200.000, 2);

INSERT INTO PLAYER VALUES
(NULL, 'Rayan', 19, 'Atacante', 80.000, 2),
(NULL, 'Germán Cano', 38, 'Atacante', 180.000, 3);



-- Manipulação de Dados

UPDATE PLAYER SET SALARY = 180000.00 WHERE ID = 1;

select * from PLAYER;

UPDATE TEAM SET CITY = 'Campinas' WHERE ID = 5;

select * from TEAM;

select * from PLAYER where ID = 1;
select * from TEAM where ID = 5;

delete from TEAM where ID = 5;



-- Consultas com WHERE

select * from PLAYER where AGE > 25;

select * from PLAYER where SALARY < 100.000;

select * from TEAM where FOUNDATION_YEAR > 1990;

select * from PLAYER where AGE > 25 and SALARY > 100.00;

select * from TEAM where FOUNDATION_YEAR > 1900 and CITY = 'Rio de Janeiro';

select * from PLAYER where AGE < 25 or SALARY < 100.00;

select * from TEAM where CITY = 'São Paulo' or CITY = 'Rio de Janeiro';

select * from TEAM where FOUNDATION_YEAR between 1950 and 2020;

select * from PLAYER where POSITION in ('Atacante', 'Meio-campista');

select * from TEAM where CITY in ('Rio de Janeiro', 'São Paulo');

select * from PLAYER where NAME like 'P%';

select * from PLAYER where NAME like '%Cano';

select * from PLAYER where NAME like '___lippe%';

select * from TEAM where CITY is null;

select * from PLAYER  order by SALARY desc limit 3;

select * from TEAM order by FOUNDATION_YEAR desc limit 3;

select * from PLAYER where AGE > 25 and SALARY > 50.000 order by SALARY desc limit 3;