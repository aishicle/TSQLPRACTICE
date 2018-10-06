create database Aish

create table departmentAish
(
deptID int primary key,
deptName varchar (max)
)

create table employeeAish 
(
id int,
name varchar (max),
salary int,
age int,
deptID int foreign key references departmentAish(deptID)
)

update employeesA
Set deptid = 4
where id = 4

update employeesA
Set deptid = 1
where id = 5

update employeesA
Set deptid = 3
where id = 6

update employeesA
Set deptid = 5
where id = 3

--Subquery 
Select * from departmentA
where deptID = (Select deptID from employeesA where name = 'Jay')

--in operator (gives you a set of values)
Select * from employeesA
where salary in (Select salary from employeesA where salary > 15000)

--exists (checks whether data exists or not)
Select * from employeesA
where exists (Select * from departmentA where deptID = 5)
