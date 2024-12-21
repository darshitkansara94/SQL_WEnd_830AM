Conditions :
	Condition can control the execution statement.
	We can execute statement based on condition.

	-- Condition Type :
		If Else :
			If and else have a two different block where we write conditions.
			If block has true condition and else block has false condition.
			Either If or else only one block will execute at a time.
			Condition : Is expression wc=ich return true or false

			-- Syntax :
				If (expression)
				Begin
					-- SQL statement
				End
				Else
				Begin
					-- SQL statement
				End

			-- Example :
				
				If (5 > 0) -- true
				Begin
					Print('5 is greater than 0')
				End
				Else
				Begin
					Print('5 is less than 0')	
				End

				If (0 > 5) -- false
				Begin
					Print('5 is greater than 0')
				End
				Else
				Begin
					Print('5 is less than 0')	
				End

				Select * from tbl_StudentDetail

				Declare @Student_DetailMarks decimal(18,2)
				Select @Student_DetailMarks = StudentDetail_Marks from tbl_StudentDetail 
					where StudentDetail_Id = 1
				Print(@Student_DetailMarks)

				If (@Student_DetailMarks > 35) -- 85.23 > 35 = true
				Begin
					Print('Pass')
				End
				Else
				Begin
					Print('Fail')
				End

		If Else if Else
			We can use multiple condition.
			
			-- Syntax :
				If (expression)
				Begin
					-- SQL Statement
				End
				else if (expression)
				Begin
					-- SQL Statement
				End
				else if (expression)
				Begin
					-- SQl Statement
				End
				Else
				Begin
					-- SQL statement
				End

			-- Example
				Declare @number int = -1
				If (@number > 0)
				Begin
					Print (concat_ws(' ',@number,'is greater to 0'))
				End
				Else if (@number < 0)
				Begin
					Print (concat_ws(' ',@number,'is less to 0'))
				End
				Else
				Begin
					Print (concat_ws(' ',@number,'is equal to 0'))					
				End
				
				-- 90 - 100 -> Grade A
				-- 75 - 89 -> Grade B
				-- 65 - 74 -> Grade C
				-- 45 - 64 -> Grade D
				-- 36 - 44 -> Grade E
				-- Less than 35 -> Grade F

				Declare @Marks decimal(18,2) = 75
				
				If (@Marks >= 90 And @Marks < 100)
				Begin
					Print('Grade A')
				End
				Else if (@Marks >= 75 And @Marks < 89)
				Begin
					Print('Grade B')
				End
				Else if(@Marks >= 65 And @Marks < 74)
				Begin
					Print('Grade C')
				End
				Else If(@Marks >= 45 And @Marks < 64)
				Begin
					Print('Grade D')
				End
				Else if(@Marks >= 36 And @Marks < 44)
				Begin
					Print('Grade E')
				End
				Else if(@Marks < 35)
				Begin
					Print('Grade F')
				End
				Else
				Begin
					Print('Invalid data')
				End


		Case Condition

