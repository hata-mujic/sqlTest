DROP DATABASE HataMujicTestDBatm;

CREATE DATABASE HataMujicTestDBatm;
USE HataMujicTestDBatm;

CREATE TABLE atmUser(
	brojRacuna INT NOT NULL PRIMARY KEY,
    userName VARCHAR(255) NOT NULL,
    iznosRacuna INT NOT NULL
);

CREATE TABLE transferNovca(
	ID INT NOT NULL PRIMARY KEY,
	sourceAccount INT NOT NULL,
    targetAccount INT NOT NULL,
    transferNovac INT NOT NULL,
    FOREIGN KEY(sourceAccount) 
		REFERENCES atmUser(brojRacuna),
	FOREIGN KEY(targetAccount)
		REFERENCES atmUser(brojRacuna)
);