CRUD operation :
	C = Create
	R = Read
	U = Update
	D = Delete

	Insert :
		Insert a new record/ data into table.
		The no of column and  no of values must be same.
		It is not mandatory to pass all the columns in insert statement.

		-- Syntax
			-- Single value insert
			Insert into tbl_Name(column1,column2,column3....columnN)
			values('value1','value2','value3'....'valueN')

			-- Multiple value insert
			Insert into tbl_Name(column1,column2,column3)
			values('value1','value1','value1'),
				('value2','value2','value2'),
				('value3','value3','value3')

			-- Insert statement with Select
			Insert into tbl_Name(column1,column2,column3)
			Select value1,value2,value3 from tbl_name

		-- Example :
			Insert into tbl_StudentMaster(Student_Id,Student_Name,Student_Gender,Student_Address)
			values(1,'Umesh','Male','Baroda')

			-- Insert multiple rows
			Insert into tbl_StudentMaster(Student_Id,Student_Name)
			values(2,'Jal'),
				(3,'Mahima'),
				(4,'Keran')

			-- Insert statement with Select statement
			Insert into tbl_StudentMaster(Student_Id,Student_Name)
			Select 5,'Mahesh'

			Insert into tbl_StudentMaster(Student_Id,Student_Name)
			Select Student_Id,Student_Name from tbl_StudentMaster

		Read :
			Get / Read data from existing table.

			-- Syntax :
				-- Display all column from the table
				Select * from table_Name

				-- Display all column/ Selected column from table
				Select column1,column2,column3.. columnN from tbl_Name

			-- Example
				Select * from tbl_StudentMaster

				Select Student_Id,Student_Name from tbl_StudentMaster


		Update
		Delete