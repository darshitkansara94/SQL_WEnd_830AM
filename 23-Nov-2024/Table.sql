Table :
	Table contain row and column.
	Every row contain some data.
	We can add multiple rows.
	We can not create same table with the same name in same DB.
	
	-- Rules for create table
		Table name should be prefix with 'tbl_'.
		Space is not allowed in table name. instead of space we will use underscore('_').
		Table name should not start with numbers and special char.

		-- Example :
			Table store data of students.
				Table name : Student Master
				Table name in SQL : tbl_Student_Master
									tbl_StudentMaster

	-- Rules for create column
		Column name always start with prefix table name.
		  -- Example : 
			Table Name in SQL : tbl_StudentMaster
				column name : Student_Name
		Column name should not start with special char and numbers.
		Space is not allowed in column name.
		We can not create duplicate column in the same table.

	-- Syntax :
		Create table tbl_Name
		(
			column1 datatype,
			column2 datatype,
			.
			.
			.
			columnN datatype
		)

		-- Example :
			Create a table with the name Student Master.
				Columns :
					Student id
					Name
					-- Standard
					Gender
					Address
					Contact No
					-- Field
					Guardian name
					DOB
					Blood group

			Create table tbl_StudentMaster
			(
				Student_Id int,
				Student_Name nvarchar(30),
				Student_Gender nvarchar(6),
				Student_Address nvarchar(1000),
				Student_ContactNumber bigint,
				Student_GuardianName nvarchar(30),
				Student_DOB datetime,
				Student_BloodGroup varchar(4)
			)
