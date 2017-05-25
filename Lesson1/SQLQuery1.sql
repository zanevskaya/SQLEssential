--CREATE DataBase FirstLesson
--ON
--(
--Name='FirstLesson',
--FileName='D:\Lessons\ITVDN\SQL\SQLEssential\HomeworkSQL\Lesson1\FirstLesson.mdf',
--Size=10MB,
--MaxSize=100MB,
--FileGrowth=10MB
--)
--LOG ON 
--(
--Name='LogFirstLesson',
--FileName='D:\Lessons\ITVDN\SQL\SQLEssential\HomeworkSQL\Lesson1\FirstLesson.ldf',
--Size=5MB,
--MaxSize=50MB,
--FileGrowth=5MB
--)
--COLLATE Cyrillic_General_CI_AS
EXECUTE sp_helpdb FirstLesson;
USE FirstLesson
GO

CREATE TABLE StuffInfo
(
EmployeeID smallint identity Not Null,
FirstName varchar(20) Not Null,
LastName varchar(20) Not Null,
PhoneNumber char(11) Not Null
)
GO
CREATE TABLE StuffSalary
(
EmployeeID smallint identity Not Null,
FirstName varchar(20) Not Null,
LastName varchar(20) Not Null,
PositionHeld varchar(20) Not Null,
Salary money Not Null
)
GO
CREATE TABLE StuffFamily
(
EmployeeID smallint identity Not Null,
FirstName varchar(20) Not Null,
LastName varchar(20) Not Null,
FamilyStatus varchar(20) Not Null,
BirthDate date Not Null,
[Adress] varchar(max) Not Null,
)
GO
