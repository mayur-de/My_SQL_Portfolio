-- Create a database
CREATE DATABASE HumanResource

-- Use database
USE HumanResource

-- Verify database creation
SELECT NAME
FROM sys.databases

-- Table 1: Employees
CREATE TABLE Employees (
	EmpID INT IDENTITY (1, 1) PRIMARY KEY,
	EmpName VARCHAR (50) NOT NULL,
	DeptID INT NULL,
	Salary INT NULL,
	JoiningDate DATE NULL)

-- Insert sample data
INSERT INTO Employees (EmpName, DeptID, Salary, JoiningDate)
VALUES 
('Ramesh', 1, 35000, '2022-01-12'),
('Suresh', 3, 55000, '2021-09-18'),
('Neha', 2, 42000, '2023-02-05'),
('Anita', 4, 60000, '2020-12-11'),
('Raghav', 2, 45000, '2022-04-13'),
('Swaraj', 3, 35000, '2021-10-28'),
('Akash', 2, 48000, '2020-02-25'),
('King', 4, 62000, '2022-12-01')

-- Table 2: Department

CREATE TABLE Departments (
	DeptID INT IDENTITY (1,1) PRIMARY KEY,
	DeptName VARCHAR (50) NOT NULL)

-- Insert sample data
INSERT INTO Departments (DeptName)
VALUES ('HR'), ('Finance'), ('IT'), ('Operations')

-- Table 3: EmployeeAudit
CREATE TABLE EmployeeAudit (
	AuditID INT IDENTITY (1,1),
	EmpID INT,
	ActionNote VARCHAR (50))

-- Insert data

INSERT INTO EmployeeAudit (EmpID, ActionNote)
VALUES
(1, 'Created'),
(2, 'Updated'),
(3, 'Promoted'),
(4, 'Transferred'),
(5, 'Created'),
(6, 'Updated'),
(7, 'Promoted'),
(8, 'Promoted')

-- Check Tables

SELECT NAME
FROM sys.tables


-- 1. Make changes to the tables using ALTER

-- 1.01: Add Column EmailID to Employees table
ALTER TABLE Employees
ADD EmailID VARCHAR (30)

-- 1.02: Add Multiple Columns (Age, Gender to Employees table)

ALTER TABLE Employees
ADD Age INT, Gender CHAR (1)

-- Check the changes

SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Employees'

-- 1.03: Drop Column/s (Age and Gender)

ALTER TABLE EMPLOYEES
DROP COLUMN Age, Gender

SELECT * FROM Employees

-- 1.04: Rename Column

EXEC sp_rename 'Employees.EmpName', 'EmployeeName', 'COLUMN'

-- CHECK

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Employees'

-- 1.05: Change Data Type of a Column

ALTER TABLE Employees
ALTER COLUMN Salary DECIMAL(10,2)

-- CHECK

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Employees'

-- 1.06: Add Default Constraint

ALTER TABLE Employees
ADD CONSTRAINT default_salary DEFAULT 30000 FOR Salary

-- CHECK AVAILABLE CONSTRAINTS

SELECT NAME
FROM sys.default_constraints

-- 1.07: Drop Default Constraint

ALTER TABLE Employees
DROP CONSTRAINT default_salary

-- 1.08: Add Primary Key (To Existing Table)

ALTER TABLE EmployeeAudit
ADD CONSTRAINT PK_EmpAudit PRIMARY KEY (AuditID)

-- CHECK

SELECT CONSTRAINT_NAME, COLUMN_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'EmployeeAudit'

-- 1.09: Drop Primary Key

ALTER TABLE EmployeeAudit
DROP CONSTRAINT PK_EmpAudit

-- 1.10: Add Foreign Key

ALTER TABLE Employees
ADD CONSTRAINT FK_Emp_Dept FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)

-- 1.11: Drop Foreign Key

ALTER TABLE Employees
DROP CONSTRAINT FK_Emp_Dept

-- 1.12: Add UNIQUE Constraint

ALTER TABLE Employees
ADD CONSTRAINT uniq_joinigdate UNIQUE (JoiningDate)

-- 1.13: Drop UNIQUE Constraint

ALTER TABLE Employees
DROP CONSTRAINT uniq_joinigdate

-- 1.14: Add CHECK Constraint

ALTER TABLE Employees
ADD CONSTRAINT check_salary CHECK (Salary >= 10000)

-- 1.15: Drop CHECK Constraint

ALTER TABLE Employees
DROP CONSTRAINT check_salary

-- 1.16: Add NOT NULL

ALTER TABLE Employees
ALTER COLUMN EmailID VARCHAR (50) NOT NULL

-- 1.17: Drop NOT NULL

ALTER TABLE Employees
ALTER COLUMN EmailID VARCHAR (50) NULL

-- 1.18: Rename Table

EXEC sp_rename 'Employees' , 'Staffdetails'


----------------------------------

-- All creatures want to believe in something bigger than themselves. They cannot live without blind obedience. 
-- And to escape the pressure of that trust, those in whom faith is placed in turn look for someone higher than themselves. 
-- And then those people in turn look for someone even higher, stronger.
-- That is how all kings are born. That is how all gods are born. 




