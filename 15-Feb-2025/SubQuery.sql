SubQuery :
	Subquery is, Query with in the query.
	Subquery written with Select statement.
	Subquery writte single column.
	With multiple rows subquery will give error.

	-- Synatx :
		Select column1, column2 from tbl_name
		where column_name = (select column_name from tbl_name)

		Select t1.column1, t1.column2 from
		(Select column1,column2 from tbl_name) as t1

	-- Example :
		Select * from tbl_Employee

		Select Employee_Name,Employee_Salary,Employee_Age 
		from tbl_Employee
		where Employee_Id in (Select Employee_Id from tbl_Employee)

		Select * from tbl_StudentMaster order by Student_Id
		Select * from tbl_StudentDetail order by Student_Id

		Select Student_Id,Student_Name,Student_ContactNumber from tbl_StudentMaster
		Where Student_Id not in (Select Student_Id from tbl_StudentDetail)
