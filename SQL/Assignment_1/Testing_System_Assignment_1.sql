-- CREATE DATABASE
DROP DATABASE IF EXISTS `Testing_System_Assignment_1`;
CREATE DATABASE `Testing_System_Assignment_1`;
USE `Testing_System_Assignment_1`;

-- CREATE TABLE: DEPARTMENT
DROP TABLE IF EXISTS `Department`;
CREATE TABLE `Department` (
    DepartmentID INT,
    DepartmentName VARCHAR(50)
);

-- CREATE TABLE: POSITION
DROP TABLE IF EXISTS `Position`;
CREATE TABLE `Position` (
    PositionID INT,
    PositionName VARCHAR(50)
);

-- CREATE TABLE: ACCOUNT
DROP TABLE IF EXISTS `Account`;
CREATE TABLE `Account` (
    AccountID INT,
    Email VARCHAR(50),
    Username VARCHAR(50),
    FullName CHAR(50),
    DepartmentID INT,
    PositionID INT,
    CreateDATE DATE
);

-- CREATE TABLE: GROUP
DROP TABLE IF EXISTS `Group`;
CREATE TABLE `Group` (
    GroupID INT,
    GroupName VARCHAR(50),
    CreatorID INT,
    CreateDATE DATE
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