Table (Continue) :
	
	create table tbl_Employee_Master
	(
		Employee_Id int,
		Employee_Name nvarchar(30),
		Employee_Address nvarchar(1000),
		Employee_Contact_Number bigint,
		Employee_Gender nvarchar(10),
		Employee_Department nvarchar(20),
		Employee_DOB datetime,
		Employee_Joining_Date datetime,
		Employee_Designation nvarchar(20),
		Employee_CTC decimal(10,2),
		Employee_Blood_Group varchar(10)
	)

	-- Modify existing table 
		-- Change datatype
			To modify datatype of existing column

			-- Syntax
				Alter table tbl_Name
				Alter column column_name datatype

			-- Example
				Alter table tbl_Employee_Master
				Alter column Employee_Id nvarchar(10)

		-- Add new column
			Add new column into existing table

			-- Syntax :
				Alter table tbl_Name
				Add column_name datatype

			-- Example
				Alter table tbl_Employee_Master
				Add Employee_EmailAddress nvarchar(50)

		-- Remove column
			Remove column from existing table

			-- Syntax
				Alter table tbl_Name
				Drop column column_name

			-- Example :
				Alter table tbl_EmployeeMaster
				Drop column Employee_joining_Date

		-- Rename table
			Rename existing table name

			-- Syntax
				exec sp_rename 'old_tableName','NewTableName'

			-- Example
				Exec sp_rename 'tbl_Employee_Master','tbl_EmployeeMaster'

		-- Rename column
			Rename existing column into table

			-- Syntax 
				Exec sp_rename 'tbl_Name.columnName','NewColumnName','Column'

			-- Example
				Exec sp_rename 'tbl_EmployeeMaster.Employee_joining_Date','Employee_JoiningDate','Column'

		-- Delete table
			Delete existing table from DB.

			-- Syntax
				Drop table table_Name

			-- Example
				Drop table tbl_EmployeeMaster