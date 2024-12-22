Store Procedure (SP) :
	Stopre procedure is block of SQL statement.
	Use of SP is code reusability, avoid duplication of code.
	Store procedure is save under database.
	We can not create store procedure with the same name in same DB.
	SP procedure name start with prefix 'sp_'.

	-- Parameter :
		Parameter define with the prefix '@'.
		Param is always define at the top of function or SP.
		Param is global for that scope.

		-- Syntax :
			@Param_name datatype

	-- Argument :
		When we use function or SP and passing value those values are consider as arguments.

		-- Example :
			SP_name(value1,value2...valueN)

	-- Variables :
		Variables that can use inside the SP / function.
		We can implement variable using keyword 'Declare'.
		We can not access variable outside of SP.
			Declaration :
				Creation of variable is called declaration	
			Intialization :
				Assigning value to that variable is called initiliation.

		-- Syntax :
			Declare @variable_Name datatype

		-- Example :
			Declare @num int -- Declaration

			Set @num = 10 -- Initilaztion

			-- Declration with Initilaztion
			Declare @num int = 10
			
	-- Syntax :
		-- Create :
		Parameters are optional.
		-- Sp with Parameter
		Create procedure sp_Name
		(
			-- Parameter
		)
		As
		Begin
			-- SQL Statement (Insert / Update / Delete / Select)
		End

		-- Without Parameter
		Create procedure sp_Name
		As
		Begin
			-- SQL statement(Insert / Update/ Delete / Select)
		End

		-- Modify Storeprocedure
		Alter procedure sp_Name
		(
			-- Parameter
		)
		As
		Begin
			-- SQL Statements (Insert / Update / Delete / Select)
		End

		-- Delete existing SP 
			Delete existing stopre procedure

			-- Syntax :
				Drop procedure sp_Name

			-- Example :
				Drop procedure [dbo].[sp_SelectStudentDetail1]

		-- Execute Procedure
		Exec sp_SelectStudentDetail
		
		-- Parameterized execution
		Exec sp_SelectStudentDetailById 4