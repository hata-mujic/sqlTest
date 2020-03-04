DROP DATABASE IF EXISTS HataMujicTestDBimenik;
CREATE DATABASE  HataMujicTestDBimenik;
USE HataMujicTestDBimenik;

CREATE TABLE imenik(
	id INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
	brojTelefona INT NOT NULL
);
