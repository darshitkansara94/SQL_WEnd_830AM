Ranking functions :
	Rank function provide sequence to the data.

	-- Types of function
		1. Row_Number() :
			Row number provider sequential number to the data.

			-- Syntax :
				Select ROW_NUMBER() over(order by column_name desc/ asc) as alias_name,
				column1,column2,column3.. from tbl_name

			-- Example :
				Select * from tbl_StudentMaster

				Select ROW_NUMBER() over(order by Student_Id desc) as Sr_no,
					Student_Id,Student_Name 
				from tbl_StudentMaster

				Select ROW_NUMBER() over(order by Student_Name desc) as Sr_no,
					Student_Id,Student_Name 
				from tbl_StudentMaster

		2. Dense_Rank()
			Provide same number to duplicate values
			
			-- Syntax :
				Select DENSE_RANK() over(order by column_name asc/desc) as alias_name
				column1,column2.. from tbl_name

			-- Example :
				Select DENSE_RANK() over(Order by Student_Id) as srno,
					Student_Id,Student_Name
				from tbl_StudentMaster

				Select DENSE_RANK() over(Order by Student_Name) as srno,
					Student_Id,Student_Name
				from tbl_StudentMaster

		3. Partition by :
			Provide sequantial number to the same value.

			-- Syntax :
				Select ROW_NUMBER() 
					over(partition by column_name order by column_name asc/desc) as alias_name,
					column1,column2..
				from tbl_name

			-- Example :
				Select ROW_NUMBER()
					Over(partition by Student_Name order by Student_Name) as Sr_No,
					Student_Id, Student_Name
				from tbl_StudentMaster

				-- With multiple condition
				Select ROW_NUMBER()
					Over(partition by Student_Name order by Student_Name) as Sr_No,
					Student_Id, Student_Name,Student_Contactnumber
				from tbl_StudentMaster

				Update tbl_StudentMaster set 
					Student_ContactNumber = 98789585 where Student_Id = 7
				
				Select * from tbl_StudentMaster