Clauses :
	Order By :
		Order by is used to sorting data in ascending or descending order.
		Default order is asc if we use order by clause.
		For create data in ascending order we have to use 'ASC'
		For create data in descending order we have to use 'DESC'.
		Order by is not affect the actual table it will reflect in output only.

		-- Syntax :
			Select column1,column2,column3...,columnN from tbl_name
			order by column_name asc/desc

		-- Example :
			Select Student_Id,Student_Name from tbl_StudentMaster

			Select Student_Id,Student_Name from tbl_StudentMaster
			Order by Student_Id

			Select Student_Id,Student_Name from tbl_StudentMaster
			Order by Student_Id asc

			Select Student_Id,Student_Name from tbl_StudentMaster
			Order by Student_Id desc			

			Select Student_Id,Student_Name from tbl_StudentMaster
			Order by Student_Name asc

			Select Student_Id,Student_Name from tbl_StudentMaster
			Order by Student_Name desc

			Select Student_Name from tbl_StudentMaster
			Order by Student_Id desc

	Group By :
		Combine same value and retuen as a group.
		Group by is mostly use with aggregate functions.
		If any column value is different mention in select statement then group by is not group the data.

		-- Syntax :
			Select column1,column2,column3...columnN from tbl_name
			group by column_names

		-- Example :
			Select Student_Id,Student_Name, Student_Gender from tbl_StudentMaster

			Select Student_Id,Student_Name from tbl_StudentMaster
			Group by Student_Id, Student_Name

			Select Student_Id,Student_Name,Student_Gender from tbl_StudentMaster
			Group by Student_Id, Student_Name, Student_Gender

			-- Order by and group by with select statement
			Select Student_Id,Student_Name,Student_Gender from tbl_StudentMaster
			Group by Student_Id, Student_Name, Student_Gender
			order by Student_Name			

	Where Clause :
		Where clause is use for filter the table result.
		We can write multiple filters to filter table result.

		-- Syntax :
			Select column1,column2,column3...., columnN from tbl_name
			where column_name = 'value'

		-- Example :
			Select Student_Id,Student_Name from tbl_StudentMaster
			Where Student_Id = 2

			-- Multiple filter
			Select Student_Id,Student_Name from tbl_StudentMaster
			Where Student_Id = 2 and Student_Name = 'Jal'

			-- Update with Where clause
			Update tbl_StudentMaster set
				Student_Id = 6
			where Student_Name = 'Umesh' and Student_Gender = 'Male'			

			Select * from tbl_StudentMaster
			where Student_Name = 'Umesh' and Student_Gender = 'Male'

			-- Delete :
				Delete from tbl_StudentMaster where Student_Id = 6

			-- Where clause with Order by and Group by
			Select Student_Id,Student_Name,Student_Gender from tbl_StudentMaster
			Where Student_Name = 'Mahesh'
			Group by Student_Id, Student_Name, Student_Gender
			order by Student_Name
