Error Handling :
	To handle runtime error we can implement error handling.
	Error handling can handle logical operation.
	we have try and catch block to handle error.
	Try :
		Our main logic is eritten in try block.
	Catch :
		Our error handling is written in catch block.

	-- Syntax :	
		Begin try
			-- Login implementation
		End try
		Begin catch
			-- Error handling
		End catch

	-- Example :
		Begin Try
			Select 10/0
		End try
		Begin catch
			Select 'Can not divide by zero'
		End catch