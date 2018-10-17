create database chap6
use chap6

CREATE TABLE [tblEmployee]
(
[Id] int,
[Name] nvarchar(50),
[Salary] int,
[Gender] nvarchar(10),
[City] nvarchar(50)
)


Insert into tblEmployee1 Values(3,'John',4500,'Male','New York')
Insert into tblEmployee1 Values(1,'Sam',2500,'Male','London')
Insert into tblEmployee1 Values(4,'Sara',5500,'Female','Tokyo')
Insert into tblEmployee1 Values(5,'Todd',3100,'Male','Toronto')
Insert into tblEmployee1 Values(2,'Pam',6500,'Female','Sydney')


Select * from tblEmployee1
where id = 5


clustered index  === 1 CI
non clustered index === 999 NCI

store procedure
sp_helpindex 'tblEmployee1'
table
CREATE TABLE [tblEmployee1]
(
[Id] int primary key, -- it makes as a clustread index
[Name] nvarchar(50),
[Salary] int,
[Gender] nvarchar(10),
[City] nvarchar(50)
)

create clustered index abc
on tblEmployee(id)


Drop index tblEmployee1.PK__tblEmplo__3214EC07058D8930


alter table tblEmployee1
add constraint abc
unique nonclustered(city)

Select * from tblEmployee1
Insert into tblEmployee1 Values(6,'Pam',6500,'Female','Mumbai')



use AdventureWorks

alter view vwseeData
as 
select e.EmployeeID, e.ManagerID,d.StartDate,d.EndDate
from HumanResources.Employee e Join HumanResources.EmployeeDepartmentHistory d
on e.EmployeeID = d.EmployeeID

Select * from seeData

insert into xyz
values (290)

Create view xyz
as
Select EmployeeID,ManagerID
from HumanResources.Employee


use chap6

Create view xyz
as
Select id,name
from tblEmployee

Select * from xyz

insert into xyz
values (6,'abc')

Derived Table == temp CTE
