create database xyz
use xyz
--
create table employee_backup
(
	id int primary key,
	name varchar(max),
	age int check(age >= 18 and age <= 60),
	salary float
)

--1 way to insert 
insert into employee (name, age, salary)
values ('anil', 30, 20000)
insert into employee (name, age)
values ('abc', 19)
insert into employee
values ('xyz', 20, 15000)


Set identity_insert employee_backup On
insert into employee_backup select * from Employee
GO



Select * from employee_backup

Select * into emp_newTable from employee


Select * from employee




update Employee
Set salary = 15000
where id = 4


Delete from employee where id = 4

--delete / truncate

truncate table employee

Drop table Employee






