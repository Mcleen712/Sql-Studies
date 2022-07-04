CREATE DATABASE IF NOT EXISTS test_school;
USE test_school;

CREATE TABLE IF NOT EXISTS classroom(
    ID INT NOT NULL PRIMARY KEY UNIQUE,
    year_level INT,
    section VARCHAR(20)  
    );

CREATE TABLE IF NOT EXISTS student(
    ID INT NOT NULL PRIMARY KEY UNIQUE,
    name VARCHAR(30) NOT NULL,
    gender VARCHAR(1) NOT NULL,
    birthday DATE,
    classroom_id INT,
    CONSTRAINT classroom FOREIGN KEY (classroom_id)  
    REFERENCES classroom(ID) 
    );

CREATE TABLE IF NOT EXISTS teacher(
    ID INT NOT NULL PRIMARY KEY UNIQUE,
    name VARCHAR(30) NOT NULL,
    gender VARCHAR(1) NOT NULL,
    birthday DATE,
    classroom_id INT,
    CONSTRAINT section FOREIGN KEY (classroom_id)  
    REFERENCES classroom(ID)
    );