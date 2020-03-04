DROP DATABASE IF EXISTS HataMujicTestDBlibrary;

CREATE DATABASE HataMujicTestDBlibrary;
USE HataMujicTestDBlibrary;

CREATE TABLE racunKorisnika(
	brojKorisnika INT NOT NULL PRIMARY KEY,
    imeKorisnika VARCHAR(255) NOT NULL,
    brojPosuđenihKnjiga INT NOT NULL
);

CREATE TABLE racunKnjige(
	brojKnjige INT NOT NULL PRIMARY KEY,
    imeKnjige VARCHAR(255) NOT NULL,
	statusKnjige BOOLEAN NOT NULL
);

CREATE TABLE podizanjeKnjige(
	id INT NOT NULL PRIMARY KEY,
	brojKorisnika INT NOT NULL,
	brojKnjige INT NOT NULL,
    datum DATE NOT NULL,
    FOREIGN KEY(brojKorisnika)
		REFERENCES racunKorisnika(brojKorisnika),
	FOREIGN KEY(brojKnjige)
		REFERENCES racunKnjige(brojKnjige)
);

