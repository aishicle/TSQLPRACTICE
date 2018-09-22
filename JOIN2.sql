create database AishDatabase


CREATE TABLE departmentAish 
( id int primary key,
departmentName varchar(max)
)

insert into departmentAish(id, departmentName)
values
(1, 'IT'),
(2, 'HR'),
(3, 'SALES'),
(4, 'MARKETING'),
(5, 'FINANCE')

Select * from departmentAish

create table employeeAish
(
empID int primary key,
empname varchar(max),
gender varchar(max),
id int foreign key references departmentAish(id)

)

insert into employeeAish (empid, empName, gender)
values
(5, 'Jay', 'Male'),
(6, 'Mangesh', 'male'),
(3, 'lavanya', 'female',4),
(4, 'Devang', 'Male', 3)

Select * from employeeAish
-- Inner join
Select employeeAish.empname,employeeAish.gender, departmentAish.departmentName
from employeeAish JOIN departmentAish
on employeeAish.id = departmentAish.id

--table alias
Select e.empname,e.gender, d.departmentName
from employeeAish e JOIN departmentAish d
on e.id = d.id
--Outer Join
--Left Outer Join
Select elo.empname,elo.gender,dlo.departmentName
from employeeAish elo left outer join departmentAish dlo
on elo.id = dlo.id

Select ero.empname, ero.gender, dro.departmentName
from departmentAish dro LEFT OUTER JOIN employeeAish ero
on dro.id = ero.id

--Right outer join
Select ero.empname, ero.gender, dro.departmentName
from departmentAish dro RIGHT OUTER JOIN employeeAish ero
on dro.id = ero.id

Select elo.empname,elo.gender,dlo.departmentName
from employeeAish elo RIGHT outer join departmentAish dlo
on elo.id = dlo.id

--full outer join
Select elo.empname,elo.gender,dlo.departmentName
from employeeAish elo full outer join departmentAish dlo
on elo.id = dlo.id

drop table DESSERT

create table PIZZA (
id int identity(1,1),
pName varchar(max),
price int
)


Select * from PIZZA
insert into PIZZA (pName, price) 
values
('small pizza', 100),
('medium pizza', 150),
('large pizza', 200),
('family pack', 250)
 
create table DESSERT (
id int identity(1,1),
dName varchar(max),
price int
)

insert into DESSERT (dName, price) 
values
('cold drink', 100),
('icecream', 150),
('brownies', 200)


select * from DESSERT

--cross join 
small pizza + colddrink

Select pname, dname, p.price + d.price as 'Total amount'
from pizza p cross join dessert d