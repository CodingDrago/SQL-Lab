-- Create Database
CREATE DATABASE IF NOT EXISTS hospital_management;

-- Use Database
USE hospital_management;

-- Doctor Table
CREATE TABLE Doctor (
    Doctor_ID INT PRIMARY KEY AUTO_INCREMENT,
    Doctor_Name VARCHAR(100) NOT NULL,
    Specialization VARCHAR(100) NOT NULL,
    Contact_Number VARCHAR(15) UNIQUE,
    Email VARCHAR(100) UNIQUE,
    Address TEXT
);

-- Patient Table
CREATE TABLE Patient (
    Patient_ID INT PRIMARY KEY AUTO_INCREMENT,
    Patient_Name VARCHAR(100) NOT NULL,
    Date_Of_Birth DATE NOT NULL,
    Gender ENUM('Male', 'Female', 'Other') NOT NULL,
    Contact_Number VARCHAR(15) UNIQUE,
    Email VARCHAR(100) UNIQUE
);

-- Appointment Table
CREATE TABLE Appointment (
    Appointment_ID INT PRIMARY KEY AUTO_INCREMENT,
    Patient_ID INT,
    Doctor_ID INT,
    Appointment_Date DATETIME NOT NULL,
    Symptoms TEXT,
    Status ENUM('Scheduled', 'Completed', 'Cancelled') DEFAULT 'Scheduled',

    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Payment Table
CREATE TABLE Payment (
    Payment_ID INT PRIMARY KEY AUTO_INCREMENT,
