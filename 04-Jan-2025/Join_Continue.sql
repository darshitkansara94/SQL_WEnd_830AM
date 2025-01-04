-- Self Join :
			Self join is use to make a join with the same table.
			We can use when we want to identify record within the same table.
			Alias name is required with table name.

			-- Syntax :
				Select column1,column2,column3... from tbl_A as alias_name,tbl_A as alias_name
				where condition

			-- Example :
				Select * from tbl_Employee

				Select e1.Employee_Id,e1.Employee_Name,e1.Employee_Salary,e2.Employee_Name as Manager_Name
				from 
					tbl_Employee as e1, tbl_Employee as e2
				Where 
					e1.Manager_Id = e2.Employee_Id
			
		-- Cross Join :
			Follow one to many relation.
			One data from tableA joins with each row of tableB.

			-- Syntax :
				Select column1, column2,column3.. from tbl_A
				cross join tbl_B
				where clause

			-- Example :
				Select sm.Student_Name,sd.StudentDetail_Subject,sd.StudentDetail_Marks from tbl_StudentMaster as sm
				cross join tbl_StudentDetail as sd
				Where sm.Student_Id = sd.Student_Id