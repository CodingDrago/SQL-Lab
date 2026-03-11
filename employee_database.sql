CREATE DATABASE employee_db;
USE employee_db;

CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    experience INT
);

CREATE TABLE Company (
    company_id INT PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    location VARCHAR(100)
);

CREATE TABLE Position (
    position_id INT PRIMARY KEY,
    position_name VARCHAR(100) NOT NULL
);

CREATE TABLE Skill (
    skill_id INT PRIMARY KEY,
    skill_name VARCHAR(100) NOT NULL
);

CREATE TABLE Project (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    duration INT
);


CREATE TABLE JobHistory (
    jobhistory_id INT PRIMARY KEY,
    employee_id INT,
    company_id INT,
    position_id INT,
    project_id INT,

    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (company_id) REFERENCES Company(company_id),
    FOREIGN KEY (position_id) REFERENCES Position(position_id),
    FOREIGN KEY (project_id) REFERENCES Project(project_id)
);