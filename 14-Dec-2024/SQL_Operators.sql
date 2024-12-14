SQL Operator :
	Comparision operator :
		Equal (=) :
			Compare two values.
			If values are matched then return true else return false.

			-- Example
				Select Student_Id from tbl_StudentDetail
				Where Student_Id = 5

		Not Equal (!= / <>)
			Return value except mention in condition.

			-- Example 
				Select Student_Id from tbl_StudentDetail
				Where Student_Id != 3

				Select Student_Id from tbl_StudentDetail
				Where Student_Id <> 3

		Less than (<)
			Return less value mention in condition

			-- Example :
				Select * from tbl_StudentDetail
				where Student_Id < 3
			
		Greater than(>)
			Return greater value mention in condition

			-- Example :
				Select * from tbl_StudentDetail
				where Student_Id > 3

		Less than or equal (<=) :
			Return less than value and equal to.

			-- Example :
				Select * from tbl_StudentDetail
				where Student_Id <= 2
				

		Greater than or equal (>=)
			Return greater than value and equal to.

			-- Example :
				Select * from tbl_StudentDetail
				where Student_Id >= 3

	Logical operator