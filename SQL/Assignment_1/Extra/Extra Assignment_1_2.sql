-- EXERCISE_1: Q1:
DROP DATABASE IF EXISTS `Fresher`;
CREATE DATABASE `Fresher`;
USE `Fresher`;

CREATE TABLE `Trainee` (
    TraineeID TINYINT PRIMARY KEY AUTO_INCREMENT,
    Full_Name VARCHAR(50) NOT NULL,
    Birth_Date DATE,
    Gender ENUM('male', 'female', 'unknown') NOT NULL,
    ET_IQ TINYINT UNSIGNED CHECK (ET_IQ <= 20),
    ET_Gmath TINYINT UNSIGNED CHECK (ET_Gmath <= 20),
    ET_English TINYINT UNSIGNED CHECK (ET_English <= 50),
    Training_Class CHAR(20),
    Evaluation_Nodes TEXT
);
-- Q2: thêm trường VTI_Account với điều kiện not null & unique
ALTER TABLE `Trainee`
ADD `VTI_Account` INT UNSIGNED NOT NULL; 

-- Exercie 2:
CREATE TABLE `Data_Types` (
    ID 				INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `Name` 			VARCHAR(50) NOT NULL,
    `Code` 			CHAR(5) NOT NULL,
    Modified_Date 	TIMESTAMP
);
-- Exercie 3:
CREATE TABLE `Data_Types_2` (
	ID 				INT AUTO_INCREMENT PRIMARY KEY,			
    `Name` 			VARCHAR(50),						
    BirthDate 		DATE,					
    Gender 			BIT,						
    IsDeletedFlag 	BOOL				
);
