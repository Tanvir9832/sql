--TABLE

--To create table
CREATE TABLE student(
    ID int auto_increment Primary key, -- Primary key is the combination of NOT NULL and UNIQUE
    Name varchar(255) not null,
    Email varchar(255) not null unique,
    Age int CHECK (Age>=18),
    City varchar(255) DEFAULT 'Dhaka',
    constraint chk_person CHECK (Age>=18 AND city="Dhaka")
)


--To Rename Table
ALTER TABLE student RENAME TO studentRENAME;

--To drop table
DROP TABLE student;

--TRUNCATE TABLE Vs DROP TABLE
--Drop table command can also be used to delete complete table but it deletes table structure too. TRUNCATE TABLE doesn't delete the structure of the table.
TRUNCATE TABLE student;  





--Add Column
ALTER TABLE student ADD temp varchar(255);


--Rename Column
ALTER TABLE student RENAME COLUMN temp to tempRenamed;

--Drop Column
ALTER TABLE student drop column tempRenamed;
