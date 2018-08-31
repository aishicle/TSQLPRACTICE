USE AdventureWorks

--RETRIEVING DATA
--entire table
SELECT * FROM HumanResources.Employee 
--specific columns
SELECT TITLE, GENDER FROM HumanResources.Employee
--specific rows
select * from HumanResources.Employee where EmployeeID = 187
--specific rows and columns
select TITLE, GENDER, EMPLOYEEID FROM HumanResources.Employee WHERE EmployeeID = 53

--TEMPORARILY CUSTOMISING DATA
--way 1 "AS"
select Title AS 'Job Title' from HumanResources.Employee
--way 2 "="
select 'Job Title' = Title
 from HumanResources.Employee
 --way 3 " "
 select Title 'Job Title'
  from HumanResources.Employee

  --CONCATENATION
  --concatenating data in the rows w use of literals
  SELECT name + ' department comes under ' + groupname + 'group' AS Department
  from HumanResources.Department

  --concatenating two data entries as a row
  select name + groupname as " concat record "from HumanResources.Department

  --adds the concatenation as its own column
  select name, ' comes under ' as 'abc', GroupName
  from HumanResources.Department

  --calculating values
  --can use arithmetic operators