----Creating database----

CREATE DATABASE ProjectManagement

----Initiating database----

USE ProjectManagement

----Creating Tables----

CREATE TABLE Employee(
 Employee_id INT PRIMARY KEY IDENTITY(1,1),
 [Name] VARCHAR(20),
 Designation VARCHAR(30),
 Gender CHAR(6),
 Salary INT,
 Project_id INT
)

CREATE TABLE Project(
 Project_id INT PRIMARY KEY IDENTITY(1,1),
 ProjectName VARCHAR(50),
 [Description] VARCHAR(50),
 StartDate DATE,
 [Status] CHAR(8)
)

CREATE TABLE Task(
 Task_id INT PRIMARY KEY IDENTITY(1,1),
 Task_name VARCHAR(30),
 Project_id INT,
 Employee_id INT,
 [Status] CHAR(9),
 FOREIGN KEY (Project_id) REFERENCES Project(Project_id),
 FOREIGN KEY (Employee_id) REFERENCES Employee(Employee_id)
)

----Altering Tables----

ALTER TABLE Employee ADD CONSTRAINT fk_project_id
FOREIGN KEY (Project_id) REFERENCES Project(Project_id);

----Inserting Values----

INSERT INTO Employee VALUES ('Isabella Martinez','CEO','FEMALE',100000,NULL),
 ('Oliver James','CFO','MALE',80000,NULL),
 ('Aarav Patel','CTO','MALE',80000,NULL),
 ('Eleanor Charlotte','HR Manager','FEMALE',55000,NULL),
 ('Samuel Lee','Marketing Director','MALE',60000,NULL)
SELECT*FROM Employee

INSERT INTO Project VALUES('Strategic Planning','Cutting-Edge Strategy','2024-04-30','started'),
 ('Enterprise Transformation','Transformational Change','2024-01-01','deployed'),
 ('Global Optimization','International Operation','2024-06-01','dev'),
 ('Innovative Solutions','Innovative Products','2024-02-20','build'),
 ('Advanced Development','Cutting-Edge Research','2024-01-10','test')
SELECT*FROM Project

INSERT INTO Task VALUES('Market Research Analysis',NULL,NULL,'Started'),
 ('Financial Report Preparation',NULL,NULL,'Completed'),
 ('Product Development Planning',NULL,NULL,'Assigned'),
 ('Client Meeting Coordination',NULL,NULL,'Completed'),
 ('Website Content Update',NULL,NULL,'Assigned')

 SELECT*FROM Task
