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
    ID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(50) NOT NULL,
    `Code` CHAR(5) NOT NULL,
    Modified_Date TIMESTAMP
);
-- Exercie 3:
CREATE TABLE `Data_Types_2` (
	`ID` INT AUTO_INCREMENT PRIMARY KEY,			
    `Name` VARCHAR(50),						
    BirthDate DATE,					
    Gender BIT,						
    IsDeletedFlag BOOL				
);
-- INSERT INTO TABLE: TRAINEE
-- INSERT INTO TABLE: TRAINEE
INSERT INTO `Trainee` (Full_Name, Birth_Date, Gender, ET_IQ, ET_Gmath, ET_English, Training_Class, Evaluation_Nodes, VTI_Account) VALUES
    ('John Doe', '1995-02-15', 'male', 15, 12, 40, 'Class A', 'Good performance overall', 123456),
    ('Jane Smith', '1998-06-22', 'female', 18, 14, 45, 'Class B', 'Excellence in mathematics', 234567),
    ('Michael Johnson', '1997-11-10', 'male', 17, 13, 48, 'Class A', 'Strong communication skills', 345678),
    ('Emily Brown', '1996-09-03', 'female', 19, 15, 50, 'Class C', 'Improvement needed in English', 456789),
    ('William Davis', '1999-03-28', 'male', 16, 11, 38, 'Class B', 'Works well in team projects', 567890),
    ('Olivia Miller', '2000-08-08', 'female', 14, 10, 42, 'Class A', 'Enthusiastic learner', 678901),
    ('James Wilson', '1994-04-17', 'male', 13, 9, 35, 'Class C', 'Creative problem solver', 789012),
    ('Sophia Taylor', '1998-01-25', 'female', 20, 20, 48, 'Class B', 'Exceptional IQ and math skills', 890123),
    ('Alexander Anderson', '1997-07-19', 'male', 18, 16, 44, 'Class A', 'Active participant in class discussions', 901234),
    ('Emma Martinez', '2001-05-12', 'female', 12, 8, 32, 'Class C', 'Needs improvement in all areas', 123456);


