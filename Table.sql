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


--Add Column
ALTER TABLE student ADD temp varchar(255);


--Rename Column
ALTER TABLE student RENAME COLUMN temp to tempRenamed;

--Drop Column
ALTER TABLE student drop column tempRenamed;
