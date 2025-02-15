select * from tbl_Employee
select * from tbl_EmployeeLog

Create table tbl_EmployeeLog
(
	Log_Id int primary key identity(1,1),
	Log_Description nvarchar(200)	
)

Alter trigger tr_EmployeeLog
On tbl_Employee
For Insert
As
Begin
	Insert into tbl_EmployeeLog(Log_Description)
	values('Employee Inserted ' + Cast(GETDATE() as nvarchar(20)))
End

-------------------------------- Insert Data for trigger
Insert into tbl_Employee(Employee_Name,Employee_Age,Manager_Id)
values('Meet',29,2)

------------------------------- Trigger with dynamic value
Alter trigger tr_EmployeeLogWithName
On tbl_Employee
For Insert
As
Begin
	--Declare @EmployeeName nvarchar(20)

	--Select @EmployeeName = Employee_Name from inserted

	--Insert into tbl_EmployeeLog(Log_Description)
	--values(CONCAT_WS(' ','Employee inserted','on',CAST(getdate() as nvarchar(20)),'Employee Name is',@EmployeeName))

	Insert into tbl_EmployeeLog(Log_Description)
	Select CONCAT_WS(' ','Employee inserted','on',CAST(getdate() as nvarchar(20)),'Employee Name is',Employee_Name, 'And Age',Employee_Age) from inserted
End

----------------------------------------------- Update trigger
Alter trigger tr_EmployeeWithNameUpdate
on tbl_Employee
For Update
As
Begin
	Insert into tbl_EmployeeLog(Log_Description)
	Select CONCAT_WS(' ','Employee updated','on',CAST(getdate() as nvarchar(20)),'Employee Name is',Employee_Name, 'And Employee Id',Employee_Id) from inserted	
End

Update tbl_Employee
set Employee_Name = 'Mitesh' where Employee_Id = 12	

------------------------------------------------- Delete trigger
Create trigger tr_EmployeeWithNameDelete
on tbl_Employee
For Delete
As
Begin
	Insert into tbl_EmployeeLog(Log_Description)
	Select CONCAT_WS(' ','Employee delete','on',CAST(getdate() as nvarchar(20)),'Employee Id',Employee_Id) from deleted	
End

delete from tbl_Employee where Employee_Id = 12