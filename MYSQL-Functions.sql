# MySQL Functions, Constraints & JSON Practice

-- =====================================================
-- 1. CREATE STUDENT TABLE
-- =====================================================

CREATE TABLE Shiv (
ShivID INT PRIMARY KEY,
Name VARCHAR(50),
Marks INT,
JoiningDate DATE
);

-- Insert sample records

INSERT INTO Shiv (ShivID, Name, Marks, JoiningDate)
VALUES
(1, 'Chetan', 78, '2024-01-10'),
(2, 'Dev', 90, '2023-06-24'),
(3, 'Virat', 75, '2022-09-12'),
(4, 'Khushi', 89, '2026-03-02');

-- View all records

SELECT *
FROM Shiv;

-- =====================================================
-- 2. DATE FUNCTIONS
-- =====================================================

-- Current date

SELECT CURDATE() AS CurrentDate;

-- Current date and time

SELECT NOW() AS CurrentDateTime;

-- Extract year from JoiningDate

SELECT
Name,
YEAR(JoiningDate) AS JoiningYear
FROM Shiv;

-- Extract month from JoiningDate

SELECT
Name,
MONTH(JoiningDate) AS JoiningMonth
FROM Shiv;

-- Extract day from JoiningDate

SELECT
Name,
DAY(JoiningDate) AS JoiningDay
FROM Shiv;

-- =====================================================
-- 3. STRING FUNCTIONS
-- =====================================================

-- Convert names to uppercase

SELECT
Name,
UPPER(Name) AS UpperName
FROM Shiv;

-- Convert names to lowercase

SELECT
Name,
LOWER(Name) AS LowerName
FROM Shiv;

-- Find number of characters in each name

SELECT
Name,
LENGTH(Name) AS TotalCharacters
FROM Shiv;

-- Concatenate text with name

SELECT
CONCAT('Shiv Name: ', Name) AS StudentName
FROM Shiv;

-- Extract part of the name

SELECT
Name,
SUBSTRING(Name, 2, 3) AS NamePart
FROM Shiv;

-- =====================================================
-- 4. MATHEMATICAL FUNCTIONS
-- =====================================================

-- Absolute value

SELECT ABS(-25) AS AbsoluteValue;

-- Round a decimal number

SELECT ROUND(15.67) AS RoundedValue;

-- Round a number upward

SELECT CEIL(15.2) AS CeilingValue;

-- Round a number downward

SELECT FLOOR(15.9) AS FloorValue;

-- Find remainder

SELECT MOD(17, 5) AS Remainder;

-- =====================================================
-- 5. AGGREGATE FUNCTIONS
-- =====================================================

-- Count total students

SELECT COUNT(*) AS TotalStudents
FROM Shiv;

-- Calculate total marks

SELECT SUM(Marks) AS TotalMarks
FROM Shiv;

-- Calculate average marks

SELECT AVG(Marks) AS AverageMarks
FROM Shiv;

-- Find maximum marks

SELECT MAX(Marks) AS MaximumMarks
FROM Shiv;

-- Find minimum marks

SELECT MIN(Marks) AS MinimumMarks
FROM Shiv;

-- =====================================================
-- 6. JSON USING CONCAT()
-- =====================================================

SELECT
CONCAT(
'{',
'"Name":"', Name, '",',
'"Marks":', Marks,
'}'
) AS StudentJSON
FROM Shiv;

-- =====================================================
-- 7. JSON_OBJECT() FUNCTION
-- =====================================================

SELECT
JSON_OBJECT(
'Name', Name,
'Marks', Marks
) AS StudentJSON
FROM Shiv;

-- =====================================================
-- 8. JSON_EXTRACT() FUNCTION
-- =====================================================

SELECT
JSON_EXTRACT(
'{"Name":"Rahul","Marks":90}',
'$.Name'
) AS StudentName;

-- =====================================================
-- 9. PASSPORT TABLE
-- =====================================================

-- Create a Passport table where:
-- Passport number cannot be NULL
-- Holder name cannot be NULL

CREATE TABLE Passport (
PassportNo VARCHAR(100) NOT NULL,
HolderName VARCHAR(100) NOT NULL,
Country VARCHAR(50)
);

-- Insert passport record

INSERT INTO Passport (PassportNo, HolderName, Country)
VALUES
('Abc@123', 'Rahul Sharma', 'India');

-- View passport records

SELECT *
FROM Passport;

-- =====================================================
-- 10. MOVIE TABLE
-- =====================================================

CREATE TABLE Movie (
MovieID INT PRIMARY KEY,
MovieName VARCHAR(100)
);

-- Insert movie records

INSERT INTO Movie (MovieID, MovieName)
VALUES
(1, '3 Idiots'),
(2, 'KGF'),
(3, 'Bahubali'),
(4, 'Pushpa'),
(5, 'Dangal');

-- View movie records

SELECT *
FROM Movie;

-- =====================================================
-- 11. HOSPITAL TABLE
-- =====================================================

CREATE TABLE Hospital (
HospitalID INT PRIMARY KEY,
HospitalName VARCHAR(100) NOT NULL,
City VARCHAR(50)
);

-- Insert hospital records

INSERT INTO Hospital (HospitalID, HospitalName, City)
VALUES
(1, 'Apollo Hospital', 'Delhi'),
(2, 'Fortis Hospital', 'Mumbai'),
(3, 'AIIMS', 'New Delhi');

-- View hospital records

SELECT *
FROM Hospital;

-- =====================================================
-- 12. DOCTOR TABLE WITH FOREIGN KEY
-- =====================================================

CREATE TABLE Doctor (
DoctorID INT PRIMARY KEY,
DoctorName VARCHAR(100) NOT NULL,
Specialization VARCHAR(100),
HospitalID INT,

```
FOREIGN KEY (HospitalID)
    REFERENCES Hospital(HospitalID)
```

);

-- View doctor records

SELECT *
FROM Doctor;

-- =====================================================
-- END OF MYSQL PRACTICE
-- =====================================================
