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
