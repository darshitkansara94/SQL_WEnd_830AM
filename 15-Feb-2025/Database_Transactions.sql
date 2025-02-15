Database Transaction :
	Commit :
		Commit is used to save entry permenantly into database.
		once commit is done we can not rollback that entry.

		-- Syntax :
			Begin transaction tr_Name
				SQL statement
			Commit transaction tr_Name

		-- Example :
			Begin transaction tr_Error
				Insert into tbl_Employee(Employee_Name,Employee_Age,Manager_Id)
				values('Meet',29,2)
				
				Insert into tbl_EmployeeLog(Log_Description)
				values('Employee Inserted ' + GETDATE())
			commit transaction tr_Error

	Rollback :
		Reverse the transaction if error is occured.

		-- Example

		Select * from tbl_Employee

		Begin try
			Begin transaction tr_Error
				Insert into tbl_Employee(Employee_Name,Employee_Age,Manager_Id)
				values('ABC',29,2)
				
				Insert into tbl_EmployeeLog(Log_Description)
				values('Employee Inserted ' + cast(GETDATE() as nvarchar(20)))

				print('try executed')

			commit transaction tr_Error
		End try
		Begin catch
			print('catch executed')

			Rollback transaction tr_Error
		End catch