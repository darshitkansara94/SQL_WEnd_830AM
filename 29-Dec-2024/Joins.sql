Joins :
	Join is combination of two or more than two tables.

	Types of joins :
		-- Inner Join :
			Inner join return common data from both the tables.
			Order of table is not important here.

			-- Syntax :
				Select column1, column2, column3 from tbl_A
				Inner join tbl_B on
					tbl_A.column_name = tbl_B.column_name

			-- Example :
				Select tbl_StudentMaster.Student_Id, tbl_StudentMaster.Student_Name,
				tbl_StudentDetail.StudentDetail_Subject,tbl_StudentDetail.StudentDetail_Standard,
				tbl_StudentDetail.StudentDetail_Marks,tbl_StudentDetail.StudentDetail_Id
				from tbl_StudentMaster
				Inner join tbl_StudentDetail
					on tbl_StudentDetail.Student_Id = tbl_StudentMaster.Student_Id


				Select tbl_StudentMaster.Student_Id, tbl_StudentMaster.Student_Name,
				tbl_StudentDetail.StudentDetail_Subject,tbl_StudentDetail.StudentDetail_Standard,
				tbl_StudentDetail.StudentDetail_Marks,tbl_StudentDetail.StudentDetail_Id
				from tbl_StudentMaster
				Inner join tbl_StudentDetail
					on tbl_StudentDetail.Student_Id = tbl_StudentMaster.Student_Id
				Where tbl_StudentMaster.Student_Id = 1

				Select * from tbl_StudentMaster
				Select * from tbl_StudentDetail


		-- Left Join (Left Outer Join) :
			Return all data from Left table and matching data from right table.
			For ex : TableA and TableB
				Select * from TableA
				Inner join TableB on TableA.Id = TableB.Id

				-- Left Table : I can consider TableA as my left table
				-- Right Table : I can consider TableB as my right table

				-- Syntax :
					Select column1, column2, column3 from tbl_A
					Left join tbl_B on
						tbl_A.column_name = tbl_B.column_name

				-- Example :
					Select tbl_StudentMaster.Student_Id, tbl_StudentMaster.Student_Name,
					tbl_StudentDetail.StudentDetail_Subject,tbl_StudentDetail.StudentDetail_Standard,
					tbl_StudentDetail.StudentDetail_Marks,tbl_StudentDetail.StudentDetail_Id
					from tbl_StudentMaster
					Left join tbl_StudentDetail
					on tbl_StudentDetail.Student_Id = tbl_StudentMaster.Student_Id 

					Select tbl_StudentMaster.Student_Id,tbl_StudentDetail.Student_Id, tbl_StudentMaster.Student_Name,
					tbl_StudentDetail.StudentDetail_Subject,tbl_StudentDetail.StudentDetail_Standard,
					tbl_StudentDetail.StudentDetail_Marks,tbl_StudentDetail.StudentDetail_Id
					from tbl_StudentDetail
					Left join tbl_StudentMaster
					on tbl_StudentDetail.Student_Id = tbl_StudentMaster.Student_Id 
					order by tbl_StudentMaster.Student_Id
				

		-- Right join (Right Outer Join) :
			Return all data from Right table and matching / common data from left table.
			Order of table is matter here.

			-- Syntax :
				Select column1,column2,column3.. from tbl_A
				Right join tbl_B on tbl_A.column_name = tbl_B.column_name

			--Example :
					Select tbl_StudentMaster.Student_Id,tbl_StudentDetail.Student_Id, tbl_StudentMaster.Student_Name,
					tbl_StudentDetail.StudentDetail_Subject,tbl_StudentDetail.StudentDetail_Standard,
					tbl_StudentDetail.StudentDetail_Marks,tbl_StudentDetail.StudentDetail_Id
					from tbl_StudentDetail
					Right join tbl_StudentMaster
					on tbl_StudentDetail.Student_Id = tbl_StudentMaster.Student_Id 
					order by tbl_StudentMaster.Student_Id

					Select tbl_StudentMaster.Student_Id, tbl_StudentMaster.Student_Name,
					tbl_StudentDetail.StudentDetail_Subject,tbl_StudentDetail.StudentDetail_Standard,
					tbl_StudentDetail.StudentDetail_Marks,tbl_StudentDetail.StudentDetail_Id
					from tbl_StudentMaster
					Right join tbl_StudentDetail
					on tbl_StudentDetail.Student_Id = tbl_StudentMaster.Student_Id 

		
				
	