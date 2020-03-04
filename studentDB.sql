DROP DATABASE IF EXISTS HataMujicTestDBstudent;
CREATE DATABASE  HataMujicTestDBstudent;
USE HataMujicTestDBstudent;

CREATE TABLE student(
	mbrStudent INT NOT NULL PRIMARY KEY,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    dob DATE,
    brojIndexa VARCHAR(255) NOT NULL UNIQUE
);
