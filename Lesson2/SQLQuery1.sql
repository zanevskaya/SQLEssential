CREATE DataBase HomeWork
ON
(
Name = 'HomeWork',
FileName = 'D:\Lessons\ITVDN\SQL\SQLEssential\HomeworkSQL\Lesson2\HomeWork.mdf',
Size = 5MB,
MaxSize = 10MB,
FileGrowth = 2MB
)
LOG ON
(
Name = 'LogHomeWork',
FileName = 'D:\Lessons\ITVDN\SQL\SQLEssential\HomeworkSQL\Lesson2\HomeWork.ldf',
Size = 3MB,
MaxSize = 5MB,
FileGrowth = 1MB
)
COLLATE Cyrillic_General_CI_AS
EXECUTE sp_helpdb FirstLesson;
USE Homework
GO

CREATE TABLE Product
(
ProductID smallint identity Not Null,
[Name] varchar(20) Not Null,
ProductNumber varchar(20) Not Null,
[Cost,$] money Not Null,
[Count] tinyint Not Null,
SellStartDate datetime Not Null
)
GO

INSERT INTO Product
VALUES
('Корона', 'AK-53818', '$5', '50', '08/15/2011'),
('Милка', 'AM-51122', '6.1', '50', '07/15/2011'),
('Аленка', 'AA-52211', '2.5', '20', '06/15/2011'),
('Snickers', 'BS-32118', '2.8', '50', '08/15/2011'),
('Snickers', 'BSL-3818', '5', '100', '08/20/2011'),
('Bounty', 'BB-38218', '3', '100', '08/01/2011'),
('Nuts', 'BN-37818', '3', '100', '08/21/2011'),
('Mars ', 'BM-3618', '2.5', '50', '08/24/2011'),
('Свиточ ', 'AS-54181', '5', '100', '08/12/2011'),
('Свиточ ', 'AS-54182', '5', '100', '08/12/2011')

SELECT * FROM Product
WHERE [Count] > 59

SELECT * FROM Product
WHERE [Cost,$] > 3 AND SellStartDate >= '08/20/2011'

UPDATE Product
SET [Cost,$] = ([Cost,$]+0.25)
WHERE [Name] = 'Свиточ'

CREATE TABLE Customers
(
CustomerNo int identity Not Null,
FName nvarchar(15) Not Null,
LName nvarchar(15) Not Null,
MName nvarchar(15) Null,
Adress1 nvarchar(50) Not Null,
Adress2 nvarchar(50) Null,
City nchar(10) Not Null,
Phone char(12) Not Null,
DateInSystem date Null
)
GO