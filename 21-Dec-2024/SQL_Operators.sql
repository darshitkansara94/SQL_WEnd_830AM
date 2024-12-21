Logical operator
		And :
			And make sure that one or more than one condition must be true.
			All the condition include in AND operator must be true.
			If any condition is false than SQL statement will return empty result.

			-- Syntax :
				Select column1,column2,column3.. from tbl_name
				Where column_name1 = value1 AND column_name2 = value2....

			-- Example :
				Select * from tbl_StudentDetail

				Select * from tbl_StudentDetail
				Where
					StudentDetail_Id = 3 AND Student_Id = 2 AND StudentDetail_Subject = 'Chemastry'

				Select * from tbl_StudentDetail
				Where
					StudentDetail_Id = 3 AND Student_Id = 2 AND StudentDetail_Subject = 'Maths'
		OR :
			If any single condition is true than OR condition return value for that.

			-- Syntax :
				Select column1,column2,column3.. from tbl_name
				Where column_name1 = value1 OR column_name2 = value2....

			-- Example :
				Select * from tbl_StudentDetail

				Select * from tbl_StudentDetail
				Where
					StudentDetail_Id = 3 OR Student_Id = 2 OR StudentDetail_Subject = 'Chemastry'

				Select * from tbl_StudentDetail
				Where
					StudentDetail_Id = 3 OR Student_Id = 2 OR StudentDetail_Subject = 'Maths'
		
		Between :
			This keyword is use to identify the data by range.
			
			-- Syntax :	
				Select column1,column2.. from tbl_name
				Where column_name between value1 AND value2

			-- Example :
				Select * from tbl_StudentDetail
				Where StudentDetail_Id between 6 AND 11

		Like :
			Like operator use to find value at any position.
			It follow startwith, Endwith and contains search criteria.
			To define search criteria we will use '%' sign.

			-- Syntax :
				-- Startwith :
				Select column1, column2 from tbl_name
				where column_name like 'searchvalue%'

				-- Endwith
				Select column1,column2 from tbl_name
				Where column_name like '%searchvalue'

				-- Contains
				Select column1, column2... from tbl_name
				Where column_name like '%searchvalue%'

			-- Example :
				Select * from tbl_StudentDetail

				-- Startwith
				Select * from tbl_StudentDetail
				Where StudentDetail_Subject Like 'ma%'

				-- Endwith
				Select * from tbl_StudentDetail
				Where StudentDetail_Subject Like '%y'

				-- Contains
				Select * from tbl_StudentDetail
				Where StudentDetail_Subject Like '%a%'

		In :
			When i want to search multiple value from single column.

			-- Syntax :
				Select column1,column2... from tbl_name
				Where column_name in (value1,value2...)

			-- Example :
				Select * from tbl_StudentDetail
				--Problem
				Select * from tbl_StudentDetail
				where StudentDetail_Id = 2 OR StudentDetail_Id = 4 OR
					StudentDetail_Id = 6

				Select * from tbl_StudentDetail
				where StudentDetail_Id IN (2,4,15)

				Select * from tbl_StudentDetail
				where StudentDetail_Subject IN ('Maths','Physics')
		Not :
			Return value except mention in condition.

			-- Example :
				-- Like
				Select * from tbl_StudentDetail
				Where StudentDetail_Subject Not Like 'm%'

				-- Endwith
				Select * from tbl_StudentDetail
				Where StudentDetail_Subject Not Like '%y'

				-- Contains
				Select * from tbl_StudentDetail
				Where StudentDetail_Subject not Like '%a%'

				-- Between
				Select * from tbl_StudentDetail
				Where StudentDetail_Id Not between 2 AND 4

				-- In
				Select * from tbl_StudentDetail
				where StudentDetail_Subject Not IN ('Maths','Physics')

		Arithmetic Operator :
			Perform Mathemetical operation.

			-- Types of Arithmetic operator
			Add (+)
				Addition of two or more numbers.

				-- Example
					Select 10 + 20 as Addition

			Substract (-) :
				Substract two or more values.

				-- Example :
					Select 10 - 20 as Substraction

					Select 20 - 10 as Substraction

			Multiply (*)
				Multiplication of two or more value.

				-- Example :
					Select 10 * 20 as Multiplication
			Division (/) 
				Division of two numbers.

				-- Example :
					Select 9 / 3 as Division

					Select 9 / 0 as Division

			Modulo (%)
				Reminder of division.

				-- Example :
					Select 7 % 2 as Modulo
		