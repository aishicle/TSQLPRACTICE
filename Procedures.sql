use anil
Select * from [dbo].[abc]
Select * from [dbo].[customer]
insert into [dbo].[customer] values
('abc', 'India', 100,5001)
GO

temp per

Store procedure
--Simple Store procedure without parameters
Create procedure spSelect
as
begin
	Select * from Customer
end

execute spSelect
exec spSelect
spselect

--SP with parameters
Create proc spSelectWithParameter @id int
as
begin
	Select * from customer where customer_id = @id
end

spSelectWithParameter 3002

--SP to Insert Records

Alter proc spInsert @custName varchar(max), @city varchar(max), @grade int, @salesmanId int
as
begin
	insert into customer values
		(@custName, @city, @grade, @salesmanId)

	exec spSelect
end

spInsert 'anil', 'mumbai',100,5001

--call store procedure from store procedure




--Programming in Sql we use Function
--Scalar Function === Aggregate Function === it gives one value
--Inline Function === whole Table
--Table Valued Function
