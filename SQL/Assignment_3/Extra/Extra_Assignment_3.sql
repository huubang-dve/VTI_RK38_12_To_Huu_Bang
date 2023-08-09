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

ALTER TABLE `Trainee`
ADD `VTI_Account` INT UNSIGNED NOT NULL;

CREATE TABLE `Data_Types` (
    ID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(50) NOT NULL,
    `Code` CHAR(5) NOT NULL,
    Modified_Date TIMESTAMP
);

CREATE TABLE `Data_Types_2` (
    `ID` INT AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(50),
    BirthDate DATE,
    Gender BIT,
    IsDeletedFlag BOOL
);
-- Q1: INSERT INTO TABLE: TRAINEE
INSERT INTO `Trainee` (Full_Name, Birth_Date, Gender, ET_IQ, ET_Gmath, ET_English, Training_Class, Evaluation_Nodes, VTI_Account) VALUES
    ('John Doe', '1995-02-15', 'male', 15, 12, 40, 'Class A', 'Good performance overall', 123456),
    ('Jane Smith', '1998-02-22', 'female', 18, 14, 45, 'Class B', 'Excellence in mathematics', 234567),
    ('Michael Johnson', '1997-11-10', 'male', 17, 13, 48, 'Class A', 'Strong communication skills', 345678),
    ('Emily Brown', '1996-09-03', 'female', 19, 15, 50, 'Class C', 'Improvement needed in English', 456789),
    ('William Davis', '1999-03-28', 'male', 16, 11, 38, 'Class B', 'Works well in team projects', 567890),
    ('Olivia Miller', '2000-08-08', 'female', 14, 10, 42, 'Class A', 'Enthusiastic learner', 678901),
    ('James Wilson', '1994-04-17', 'male', 13, 9, 35, 'Class C', 'Creative problem solver', 789012),
    ('Sophia Taylor', '1998-01-25', 'female', 20, 20, 48, 'Class B', 'Exceptional IQ and math skills', 890123),
    ('Alexander Anderson', '1997-07-19', 'male', 18, 16, 44, 'Class A', 'Active participant in class discussions', 901234),
    ('Emma Martinez', '2001-05-12', 'female', 12, 8, 32, 'Class C', 'Needs improvement in all areas', 123456);

-- Insert into Data_Types
INSERT INTO `Data_Types` (`Name`, `Code`)
VALUES
    ('Type 1', 'T1'),
    ('Type 2', 'T2'),
    ('Type 3', 'T3'),
    ('Type 4', 'T4'),
    ('Type 5', 'T5'),
    ('Type 6', 'T6'),
    ('Type 7', 'T7'),
    ('Type 8', 'T8'),
    ('Type 9', 'T9'),
    ('Type 10', 'T10');

-- Insert into Data_Types_2
INSERT INTO `Data_Types_2` (`Name`, BirthDate, Gender, IsDeletedFlag)
VALUES
    ('John Doe', '1990-01-01', 1, 0),
    ('Jane Smith', '1995-05-15', 0, 0),
    ('Michael Johnson', '1987-11-20', 1, 0),
    ('Emily Brown', '1992-09-10', 0, 1),
    ('David Lee', '1998-03-25', 1, 0),
    ('Emma White', '1993-07-07', 0, 1),
    ('Christopher Taylor', '1991-06-18', 1, 1),
    ('Olivia Anderson', '1996-12-30', 0, 0),
    ('Daniel Martin', '1997-08-05', 1, 1),
    ('Sophia Wilson', '1994-04-12', 0, 0);

--  Q2: Viết lệnh để lấy ra tất cả các thực tập sinh đã vượt qua bài test đầu vào, nhóm chúng thành các tháng sinh khác nhau:
SELECT
	GROUP_CONCAT(Full_Name),
    MONTH(Birth_Date) AS MonthOfBirth,
    COUNT(*) AS PassedTrainees
FROM
    `Trainee`
WHERE
    ET_IQ > 10 AND
    ET_Gmath > 10 AND
    ET_English > 30
GROUP BY
    MonthOfBirth;

-- Q3: Viết lệnh để lấy ra thực tập sinh có tên dài nhất, lấy ra các thông tin sau: tên, tuổi, các thông tin cơ bản (như đã được định nghĩa trong table):
SELECT *
FROM  `Trainee`
WHERE LENGTH(Full_Name) = (SELECT MAX(LENGTH(Full_Name))  FROM Trainee);

-- Q4: Viết lệnh để lấy ra tất cả các thực tập sinh là ET, 1 ET thực tập sinh là những người đã vượt qua bài test đầu vào và thỏa mãn số điểm như sau: 
-- ET_IQ + ET_Gmath>=20 
-- ET_IQ>=8 
-- ET_Gmath>=8 
-- ET_English>=18

SELECT 
    *
FROM
    `Trainee`
WHERE
    ET_IQ + ET_Gmath >= 20 AND ET_IQ >= 8
        AND ET_Gmath >= 8
        AND ET_English >= 18;

-- Q5: xóa thực tập sinh có TraineeID = 3:

DELETE FROM `Trainee` 
WHERE
    TraineeID = 3;

-- Q6:Thực tập sinh có TraineeID = 5 được chuyển sang lớp "2". Hãy cập nhật thông tin vào database:

UPDATE `Trainee` 
SET 
    Training_Class = '2'
WHERE
    TraineeID = 5;