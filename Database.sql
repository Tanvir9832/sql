--Create Database
CREATE DATABASE Practice;

--To see all created databases;
show DATABASES;

--To select a database.
use Practice;


--Rename Database
RENAME DATABASE Practice TO Practices;
ALTER DATABASE Practice MODIFY NAME = Practices;




--To delete database
DROP DATABASE Practice;

/*
Two important info about drop database;
1.This statement deletes all the data from the database. If you want to restore the deleted data in the future, you should keep the backup of data of that database which you want to delete.
2. you cannot delete that database from the system which is currently in use by another database user.
*/