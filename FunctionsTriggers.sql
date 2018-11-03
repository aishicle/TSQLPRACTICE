create function addNum(@num1 int)
returns int
as 
begin
	if(@num1 > 0)
	begin
		Set @num1 = @num1 + 10
		--print @num1
		
	end
	return @num1
end
--program
Select [dbo].[addNum](20)

Select * from [dbo].[employees]
where age >= [dbo].[addNum](20)

Select * from [dbo].[department]

insert into employees values (2,'aish','goregaon','female',21,25000,3),
(3,'shweta','Malad','Female',20,12000,2)


Create function InTabl(@gender varchar(max))
returns table
as
	return(Select * from employees where gender = @gender)

Select * from dbo.InTabl('female')

create function udfProduct(@number int)
returns int 
as
begin	
	if (@number<1)
	begin 
		set @number = @number * 10
	end
	else
	begin
		set @number = @number * -10
	end
	return @number
end

select [dbo].[udfProduct](20)



--DDL trigger  restricting to create drop alter any database object (table, procedure, view, etc)

alter trigger NotAllowed
on database
for create_table, drop_table,drop_function
as 
begin
	print 'Not allowed to create or drop table'
	Rollback
end

create table abc
(
	id int
)

drop function [udfProduct]


--DML Trigger


Merge

drop trigger NotAllowed

Select * from employees
Select * from employees_backup

delete from employees where id  =1
insert into employees values (1,'anil','goregaon','male',25,55000,3),
(5,'shruti','Malad','Female',23,12000,2)


Merge employees_backup Target
using employees as source
on(target.id = source.id)
WHEN MATCHED AND TARGET.ENAME <> SOURCE.ENAME
THEN UPDATE SET target.salary = source.salary
when not matched then 
insert values(source.id,source.Ename,source.Address,source.Gender,source.age,source.salary,source.departmentId)
when not matched by source then
delete;



update employees
set salary = 35000
where id = 2

create trigger IUD
on employees
after insert, update, delete
as
begin
	Merge employees_backup Target
using employees as source
on(target.id = source.id)
WHEN MATCHED AND TARGET.ENAME <> SOURCE.ENAME
THEN UPDATE SET target.salary = source.salary
when not matched then 
insert values(source.id,source.Ename,source.Address,source.Gender,source.age,source.salary,source.departmentId)
when not matched by source then
delete;
end
