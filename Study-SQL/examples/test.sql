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
    teacher VARCHAR(60) NOT NULL,
    gender VARCHAR(1) NOT NULL,
    year_level INT,
    section VARCHAR(20),
    birthday DATE,
    classroom_id INT,
    CONSTRAINT classroom FOREIGN KEY (classroom_id)  
    REFERENCES classroom(ID) 
    );

CREATE TABLE IF NOT EXISTS teacher(
    ID INT NOT NULL PRIMARY KEY UNIQUE,
    name VARCHAR(30) NOT NULL,
    gender VARCHAR(1) NOT NULL,
    year_level_adviser INT,
    section_adviser VARCHAR(20),
    birthday DATE,
    classroom_id INT,
    CONSTRAINT section FOREIGN KEY (classroom_id)  
    REFERENCES classroom(ID)
    );

INSERT INTO classroom VALUES(
    1,
    1,
    "St. Francis");

INSERT INTO classroom VALUES(
    2,
    2,
    "St. Albert"
);

INSERT INTO teacher VALUES(
    1,
    "Joan Tonet",
    "F",
    1,
    "St. Francis",
    '2008-7-04',
    1
);

INSERT INTO teacher VALUES(
    2,
    "Joseph Agtangkara",
    "M",
    2,
    "St. Albert",
    '2008-7-04',
    2
);


INSERT INTO student VALUES (
    1,
    "John Doe",
    "John Sins",
    "M",
    1,
    "St. Francis",
    "2001-08-08",
    1
    );

INSERT INTO student VALUES (
    2,
    "Max Well",
    "John Sins",
    "M",
    2,
    "St. Albert",
    "2001-06-01",
    2
    );

INSERT INTO student VALUES (
    3,
    "Chris Tian",
    "John Sins",
    "M",
    2,
    "St. Albert",
    "2002-06-01",
    2
    );