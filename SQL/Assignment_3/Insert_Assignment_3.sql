-- INSERT INTO Department
INSERT INTO Department (DepartmentName)
VALUES ('Sales'), ('Marketing'), ('Development'), ('HR'), ('Finance'),
       ('IT'), ('Operations'), ('Customer Support'), ('Design'), ('Quality Assurance');

-- INSERT INTO Position
INSERT INTO Position (PositionName)
VALUES ('Dev'), ('Scrum Master'), ('PM'), ('Dev'), ('Scrum Master'), ('PM'), ('Dev'), ('Scrum Master'), ('PM'), ('Dev');

-- INSERT INTO Account
INSERT INTO Account (Email, Username, FullName, DepartmentID, PositionID)
VALUES ('user1@example.com', 'user1', 'User One', 1, 1),
       ('user2@example.com', 'user2', 'User Two', 2, 2),
       ('user3@example.com', 'user3', 'User Three', 3, 3),
       ('user4@example.com', 'user4', 'User Four', 4, 4),
       ('user5@example.com', 'user5', 'User Five', 5, 5),
       ('user6@example.com', 'user6', 'User Six', 6, 6),
       ('user7@example.com', 'user7', 'User Seven', 7, 7),
       ('user8@example.com', 'user8', 'User Eight', 8, 8),
       ('user9@example.com', 'user9', 'User Nine', 9, 9),
       ('user10@example.com', 'user10', 'User Ten', 10, 10);

-- INSERT INTO Group
INSERT INTO `Group` (GroupName, CreatorID)
VALUES ('Group A', 1), ('Group B', 2), ('Group C', 3), ('Group D', 4), ('Group E', 5),
       ('Group F', 6), ('Group G', 7), ('Group H', 8), ('Group I', 9), ('Group J', 10);

-- INSERT INTO GroupAccount
INSERT INTO GroupAccount (GroupID, AccountID)
VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
       (6, 6), (7, 7), (8, 8), (9, 9), (10, 10);

-- INSERT INTO TypeQuestion
INSERT INTO TypeQuestion (TypeName)
VALUES ('Essay'), ('Multiple-Choice');

-- INSERT INTO CategoryQuestion
INSERT INTO CategoryQuestion (CategoryName)
VALUES ('Java'), ('.NET'), ('SQL'), ('Postman'), ('Ruby'),
       ('Design Patterns'), ('Testing'), ('Agile'), ('Project Management'), ('Web Development');

-- INSERT INTO Question
INSERT INTO Question (Content, CategoryID, TypeID, CreatorID)
VALUES ('What is a constructor in Java?', 1, 1, 1),
       ('What is the difference between?', 2, 1, 2),
       ('What is an SQL JOIN?', 3, 1, 3),
       ('How to make a GET request using Postman?', 4, 1, 4),
       ('What is Ruby on Rails?', 5, 1, 5),
       ('What are Singleton design patterns?', 6, 1, 6),
       ('What is unit testing?', 7, 1, 7),
       ('What is Scrum methodology?', 8, 1, 8),
       ('What is Gantt chart in project management?', 9, 1, 9),
       ('What is HTML5?', 10, 1, 10);

-- INSERT INTO Answer
-- INSERT INTO TABLE: ANSWER
INSERT INTO `Answer` (Content, QuestionID, isCorrect) VALUES
    ('Answer 1 for Question 1', 1, 1),
    ('Answer 2 for Question 1', 1, 0),
    ('Answer 1 for Question 2', 2, 1),
    ('Answer 2 for Question 2', 2, 0),
    ('Answer 1 for Question 3', 3, 1),
    ('Answer 2 for Question 3', 3, 0),
    ('Answer 1 for Question 4', 4, 1),
    ('Answer 2 for Question 4', 4, 0),
    ('Answer 1 for Question 5', 5, 1),
    ('Answer 2 for Question 5', 5, 0);

-- INSERT INTO Exam
INSERT INTO Exam (`Code`, Title, CategoryID, Duration, CreatorID)
VALUES ('EXAM1', 'Java Fundamentals', 1, 60, 1),
       ('EXAM2', '.NET Core Basics', 2, 45, 2),
       ('EXAM3', 'SQL Querying', 3, 30, 3),
       ('EXAM4', 'API Testing with Postman', 4, 40, 4),
       ('EXAM5', 'Ruby Programming', 5, 50, 5),
       ('EXAM6', 'Design Patterns Knowledge Check', 6, 30, 6),
       ('EXAM7', 'Unit Testing Concepts', 7, 45, 7),
       ('EXAM8', 'Introduction to Agile', 8, 30, 8),
       ('EXAM9', 'Project Management Fundamentals', 9, 60, 9),
       ('EXAM10', 'HTML5 Basics', 10, 20, 10);

-- INSERT INTO ExamQuestion
INSERT INTO ExamQuestion (ExamID, QuestionID)
VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
       (6, 6), (7, 7), (8, 8), (9, 9), (10, 10);
