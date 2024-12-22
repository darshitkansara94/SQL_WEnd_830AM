Case Condition :
			Case condition can be implement inside select statement.
			Compare to If else if else performance is good.

			-- Syntax :
				-- Single condition
				Select 
					Case when condition then 'Output'
					Else 'Output' End as alias_name

				-- Multiple condition
				Select
					Case When condition then 'Output'
						When condition then 'Output'
						When condition then 'Output'
					Else 'Output' End as alias_name

			-- Example :
				-- Single condition
				Select
					Case When 5 > 0 Then '5 is Greater than 0'
					Else '5 is not Greater than 0' End as Result

				-- Multiple condition
				Declare @num1 int = 15
				Declare @num2 int = 15

				Select
					Case
						When @num1 > @num2 Then CONCAT_WS(' ',@num1,'is greater than',@num2)
						When @num1 < @num2 Then CONCAT_WS(' ',@num1,'is less than',@num2)
						When @num1 = @num2 Then CONCAT_WS(' ',@num1,'is equal to',@num2)
					Else 'Wrong input' End as Comparision

				-- 90 - 100 -> Grade A
				-- 75 - 89 -> Grade B
				-- 65 - 74 -> Grade C
				-- 45 - 64 -> Grade D
				-- 36 - 44 -> Grade E
				-- Less than 35 -> Grade F
				Declare @Marks decimal = 86

				Select
					Case
						When @Marks >= 90 And @Marks <= 100 Then 'Grade A'
						When @Marks >= 75 And @Marks <= 89 Then 'Grade B'
						When @Marks >= 65 And @Marks <= 74 Then 'Grade C'
						When @Marks >= 45 And @Marks <= 64 Then 'Grade D'
						When @Marks >= 36 And @Marks <= 44 Then 'Grade E'
					Else 'Grade F' End as Result

					Select
					Case
						When @Marks between 90 and 100 Then 'Grade A'
						When @Marks between 75 and 89 Then 'Grade B'
						When @Marks between 65 and 74 Then 'Grade C'
						When @Marks between 45 and 64 Then 'Grade D'
						When @Marks between 36 and 44 Then 'Grade E'
					Else 'Grade F' End as Result


					Select * from tbl_StudentDetail

					Select StudentDetail_Id,Student_Id,StudentDetail_Subject,StudentDetail_Standard,
					StudentDetail_Marks,
						Case 
							When StudentDetail_Marks >= 90 And StudentDetail_Marks <= 100 Then 'Grade A'
							When StudentDetail_Marks >= 75 And StudentDetail_Marks <= 89 Then 'Grade B'
							When StudentDetail_Marks >= 65 And StudentDetail_Marks <= 74 Then 'Grade C'
							When StudentDetail_Marks >= 45 And StudentDetail_Marks <= 64 Then 'Grade D'
							When StudentDetail_Marks >= 36 And StudentDetail_Marks <= 44 Then 'Grade E'
						Else 'Grade F' End as Grade

					From tbl_StudentDetail