create database CountryDB;
use CountryDB;

-- Step 1: Create tables
create table Country (
ID int primary key ,
Country_Name varchar(50),
Population int,
Area float
);


create table Persons (
ID int primary key ,
Fname  varchar(50),
Lname varchar(50),
Population int,
Rating float,
Country_Id int,
Country_Name varchar(50));


-- Step 2: Insert 10 rows into each table
INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'USA', 331002651, 9833520),
(2, 'Canada', 37742154, 9984670),
(3, 'UK', 67886011, 243610),
(4, 'India', 1380004385, 3287263),
(5, 'Australia', 25499884, 7692024),
(6, 'Germany', 83783942, 357022),
(7, 'France', 65273511, 551695),
(8, 'Japan', 126476461, 377975),
(9, 'China', 1439323776, 9596961),
(10, 'Brazil', 212559417, 8515767);

select * from Country;

INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', 331002651, 4.5, 1, 'USA'),
(2, 'Jane', 'Smith', 37742154, 3.8, 2, 'Canada'),
(3, 'Robert', 'Brown', 67886011, 4.2, 3, 'UK'),
(4, 'Alice', 'Johnson', 1380004385, 4.9, 4, 'India'),
(5, 'Emily', 'Davis', 25499884, 3.6, 5, 'Australia'),
(6, 'Daniel', 'Wilson', 83783942, 4.1, 6, 'Germany'),
(7, 'Sophia', 'Moore', 65273511, 4.7, 7, 'France'),
(8, 'William', 'Taylor', 126476461, 3.9, 8, 'Japan'),
(9, 'Linda', 'Anderson', 1439323776, 3.5, 9, 'China'),
(10, 'Michael', 'Thomas', NULL, 4.8, NULL, NULL);

select * from Persons;



#List the distinct country names from the Persons table
SELECT DISTINCT Country_name FROM Persons;

-- (2) Select first names and last names from the Persons table with aliases
select Fname AS firstname , Lname AS lastname from Persons;


-- (3)Find all persons with a rating greater than 4.0. 
select * from Persons
where Rating > 4.0;

-- 4)Find countries with a population greater than 10 lakhs. 
SELECT * FROM Country WHERE Population > 1000000;


-- 5)Find persons who are from 'USA' or have a rating greater than 4.5
select * from Persons
where Country_name = 'USA' or Rating > 4.5 ;

-- (6)Find all persons where the country name is NULL.
select * from Persons
where Country_name is null;

-- (7)Find all persons from the countries 'USA', 'Canada', and 'UK'. 
select * from Persons
where Country_name in  ('USA', 'Canada', 'UK');

-- 8)Find all persons not from the countries 'India' and 'Australia'.
select * from Persons
where Country_name not in ('India', 'Australia');


-- (9)Find all countries with a population between 5 lakhs and 20 lakhs.
SELECT * FROM Country WHERE Population BETWEEN 80000000 AND 20000000000;

-- (10)Find all countries whose names do not start with 'C'.
SELECT * FROM Country where Country_name not like 'c%';


