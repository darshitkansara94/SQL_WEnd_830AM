CTE :
	CTE : Common Table Expression
	Create virtual table at run time.
	And access that table at run time and once execution is completed SQl remove that table from
		memory.
	CTE stateent start eith the keyword "With".

	-- Syntax :
		With cte_name as
		(
			-- Select statement
		)

		-- Retrieve data from CTE
		Select * from cte_name

	-- Example 
		use Students_DB

		With cte_SelectStudent as
		(
			Select ROW_NUMBER() over(order by StudentDetail_Id) as Sr_No,
			StudentDetail_Id,StudentDetail_Subject,StudentDetail_Standard,
			StudentDetail_Marks 
			from tbl_StudentDetail
		)

		Select * from cte_SelectStudent where Sr_No = 1