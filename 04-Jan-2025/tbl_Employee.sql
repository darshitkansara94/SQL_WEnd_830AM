Create table tbl_Employee
(
	Employee_Id int primary key identity(1,1),
	Employee_Name nvarchar(20),
	Employee_Salary decimal(18,2),
	Employee_Age int,
	Manager_Id int
)

Select * from tbl_Employee

Insert into tbl_Employee(Employee_Name,Employee_Salary,Employee_Age,Manager_Id)
values('Darshit',50000,25,5),('Jal',60000,22,5),('Meet',55000,21,2),
('Chanda',55000,22,3),('Himanshu',60000,29,4)