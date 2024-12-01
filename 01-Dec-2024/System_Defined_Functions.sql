Functions :
	Function is block of code which contain some code.
	Main purpose for create a function is code reusability.

	-- How to identify function :
		Function name is always end with round paranthesis.
			Ex : function_name()
				-- Function with arguments
					function_name('abc',1)


System defined functions :
	Functions that are come with SQL server.
	User can directly use that function in SQL statement.

	-- Aggregate function
		Aggregate function is use to perform mathematical operation.
		-- Types of Aggregate functions
			-- Sum()
				Return sum of column values.

				-- Syntax :
					Select SUM(numbers/column_name) as sumvalue from table_name

				-- Example :
					Select SUM(10 + 1) as sumvalue

					Select Student_Id, Student_Name as [Student Name] from tbl_StudentMaster

					Select SUM(StudentDetail_Marks) as Total_Marks
					from tbl_StudentDetail
						Where Student_Id = 2

					-- With Group by
					Select StudentDetail_Id,Student_Id,StudentDetail_Subject,StudentDetail_Marks,
						StudentDetail_Standard, SUM(StudentDetail_Marks) as Total_Marks
					from tbl_StudentDetail
						Where Student_Id = 2
						Group by StudentDetail_Id,Student_Id,StudentDetail_Subject,StudentDetail_Standard,
							StudentDetail_Marks

					Select StudentDetail_Subject, SUM(StudentDetail_Marks) as Total_Marks
					from tbl_StudentDetail						
						Group by StudentDetail_Subject,StudentDetail_Standard
					
					Select StudentDetail_Subject,StudentDetail_Marks from tbl_StudentDetail

					--Select 'Maths', SUM(85.23 + 76.23 + 85.63) as Total_Marks
					--from tbl_StudentDetail						
					--	Group by StudentDetail_Subject,StudentDetail_Standard

			-- avg()
				To calculate average from numbers.

				-- Syntax 
					Select AVG(column_name) as aliace_name from table_name

				-- Example :	
					Select avg(StudentDetail_Marks) as Total_Marks
					from tbl_StudentDetail
						Where Student_Id = 2

					Select StudentDetail_Subject, AVG(StudentDetail_Marks) as Total_Marks
					from tbl_StudentDetail						
						Group by StudentDetail_Subject,StudentDetail_Standard

			-- Count()
				Return number of rows in table.

				-- Syntax :
					Select COUNT(* / column_name) as aliace_name from tbl_name

				-- Example :
					Select COUNT(*) as Total_Rows from tbl_StudentDetail
						Where Student_Id = 2

					Select * from tbl_StudentMaster

					Select COUNT(Student_Id) from tbl_StudentMaster

					Update tbl_StudentMaster 
					set Student_Gender = 'Male'  where Student_Id = 5

					Select COUNT(Student_Gender) from tbl_StudentMaster

			-- Min()
				Return minumul value from the column.

				-- Syntax :
					Select MIN(column_Name) as aliace_name from tbl_name
				
				-- Example :
					Select MIN(StudentDetail_Marks) as Minimum_Marks from tbl_StudentDetail
					where Student_Id = 3
			-- Max()
				Return maximum value from column.

				-- Syntax :
					Select MAX(column_name) as aliace_name from tbl_name

				-- Example :
					Select Max(StudentDetail_Marks) as Maximum_Marks from tbl_StudentDetail

	-- Date function
		-- Getdate()
		-- GetUtcDate()
		-- SysDatetime
		-- DatePart
		-- DateName
		-- Month
		-- Year
		-- IsDate
		-- DateDiff
		-- SYSDATETIMEOFFSET
		-- SYSUTCDATETIME
		-- CURRENT_TIMESTAMP
	-- String function
		-- Len()
		-- Concat()
		-- Concat with +
		-- Concat_ws
		-- Substring()
		-- Lower
		-- Upper
		-- Reverse()
		-- CharIndex()
	