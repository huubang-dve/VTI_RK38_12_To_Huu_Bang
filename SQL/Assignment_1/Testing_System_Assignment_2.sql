-- CREATE DATABASE
DROP DATABASE IF EXISTS `Testing_System_Assignment_2`;
CREATE DATABASE `Testing_System_Assignment_2`;
USE `Testing_System_Assignment_2`;

-- CREATE TABLE: DEPARTMENT
DROP TABLE IF EXISTS `Department`;
CREATE TABLE `Department` (
    DepartmentID TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    DepartmentName NVARCHAR(50) NOT NULL UNIQUE KEY
);

-- CREATE TABLE: POSITION
DROP TABLE IF EXISTS `Position`;
CREATE TABLE `Position` (
    PositionID TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    PositionName ENUM('Dev', 'Scrum Master', 'PM') NOT NULL
);

-- CREATE TABLE: ACCOUNT
DROP TABLE IF EXISTS `Account`;
CREATE TABLE `Account` (
    AccountID TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Email NVARCHAR(50) NOT NULL UNIQUE KEY,
    Username NVARCHAR(50) NOT NULL UNIQUE KEY,
    FullName NVARCHAR(50) NOT NULL,
    DepartmentID TINYINT UNSIGNED NOT NULL,
    PositionID TINYINT UNSIGNED NOT NULL,
    CreateDATE DATETIME DEFAULT NOW (),
    FOREIGN KEY (DepartmentID)
        REFERENCES `Department` (DepartmentID),
    FOREIGN KEY (PositionID)
        REFERENCES `Position` (PositionID)
);

-- CREATE TABLE: GROUP
DROP TABLE IF EXISTS `Group`;
CREATE TABLE `Group`(
	GroupID					TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    GroupName				VARCHAR(50) not null unique key,
    CreatorID				TinyINT unsigned,
    CreateDATE				DATEtime default now(),
    foreign key
);

-- CREATE TABLE: GROUPACCOUNT
DROP TABLE IF EXISTS `GroupAccount`;
CREATE TABLE `GroupAccount` (
    GroupID INT,
    AccountID INT,
    JoinDATE DATE
);

-- CREATE TABLE: TYPEQUESTION
DROP TABLE IF EXISTS `TypeQuestion`;
CREATE TABLE `TypeQuestion` (
    TypeID INT,
    TypeName VARCHAR(50)
);

-- CREATE TABLE: CATEGORYQUESTION
DROP TABLE IF EXISTS `CategoryQuestion`;
CREATE TABLE `CategoryQuestion` (
    CategoryID INT,
    CategoryName VARCHAR(50)
);

-- CREATE TABLE: QUESTION
DROP TABLE IF EXISTS `Question`;
CREATE TABLE `Question` (
    QuestionID INT,
    Content VARCHAR(50),
    CategoryID INT,
    TypeID INT,
    CreatorID INT,
    CreateDATE DATE
);

-- CREATE TABLE: ANSWER
DROP TABLE IF EXISTS `Answer`;
CREATE TABLE `Answer` (
    Answers INT,
    Content VARCHAR(50),
    QuestionID INT,
    isCorrect BIT
);

-- CREATE TABLE: EXAM
DROP TABLE IF EXISTS `Exam`;
CREATE TABLE `Exam` (
    ExamID INT,
    Code VARCHAR(10),
    Title VARCHAR(50),
    CategoryID INT,
    Duration INT,
    CreatorID INT,
    CreateDATE DATE
);

-- CREATE TABLE: EXAMQUESTION
DROP TABLE IF EXISTS `ExamQuestion`;
CREATE TABLE `ExamQuestion` (
    ExamID INT,
    QuestionID INT
);