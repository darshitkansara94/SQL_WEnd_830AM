-- System Defined function (Continue) :
-- Date function
		-- SysDatetime :
			Return current system date and time.

			-- Example :
				Select SYSDATETIME()

		-- SYSUTCDATETIME
			Return system current date and time.
			Return system date and time with the friction of seconds.

			-- Syntax :
				Select SYSDATETIME()

			-- Example :
				Select SYSDATETIME() as CurrentTime -- 2024-12-14 08:50:48.0905116

		-- SYSDATETIMEOFFSET
			Return current system date and time with offset value.
			Offset is current system timezone value.

			-- Example :
				Select SYSDATETIMEOFFSET() as CurrentTimeWithOffset

		-- CURRENT_TIMESTAMP
			Return current system date and time with ms.

			-- Example
				Select CURRENT_TIMESTAMP

		-- Getdate()
			Getdate return date and time where SQL server is installed.

			-- Example :
				Select GETDATE()

		-- GetUtcDate()
			UTC : Universal time coordinate.
			Return global time with date.

			-- Example :
				Select GETUTCDATE()

		-- DateName
			Return different parts of date as string value.

			-- Syntax :
				Select DATENAME(expression, dateandtime)

			-- Example :
				Select DATENAME(DAY,GETDATE()) as CurrentDay
				Select DATENAME(MONTH,GETDATE()) as CurrentMonth
				Select DATENAME(YEAR,GETDATE()) as CurrentYear
				Select DATENAME(HOUR, GETDATE()) as CurrentHour
				Select DATENAME(MINUTE, GETDATE()) as CurrentMinute
				Select DATENAME(SECOND, GETDATE()) as CurrentSecond
				Select DATENAME(DAYOFYEAR,GETDATE()) as CurrentDayOfYear
				Select DATENAME(WEEKDAY,GETDATE()) as CurrentWeekDay
				Select DATENAME(QUARTER,GETDATE()) as CurrentQuarter
				Select DATENAME(WEEK,GETDATE()) as CurrentISOWeek

		-- DatePart :
			Return value as int type.

			-- Syntax :
				Select DATEPART(expression,datetime)

			-- Example :
				Select DATEPART(DAY,GETDATE()) as CurrentDay
				Select DATEPART(MONTH,GETDATE()) as CurrentMonth
				Select DATEPART(YEAR,GETDATE()) as CurrentYear
				Select DATEPART(HOUR, GETDATE()) as CurrentHour
				Select DATEPART(MINUTE, GETDATE()) as CurrentMinute
				Select DATEPART(SECOND, GETDATE()) as CurrentSecond
				Select DATEPART(DAYOFYEAR,GETDATE()) as CurrentDayOfYear
				Select DATEPART(WEEKDAY,GETDATE()) as CurrentWeekDay
				Select DATEPART(QUARTER,GETDATE()) as CurrentQuarter
				Select DATEPART(WEEK,GETDATE()) as CurrentISOWeek				

		-- Month :
			Return month from date and time.

			-- Example :
				Select MONTH(GETDATE()) as CurrentMonth

		-- Year
			Return year from date and time.

			-- Example :
				Select YEAR(GETDATE()) as currentYesr

		-- IsDate
			Verify that date and time is valid or not.
			If date is valid than output is 1 else 0.

			-- Example
				Select GETDATE()

				Select ISDATE('2024-13-14 09:58:22.420') as ValidateDate

		-- DateDiff
			Calculate difference between two dates.

			-- Syntax :
				Select DATEDIFF(expression,date1,date2)

			-- Example
				Select DATEDIFF(MONTH,'2024-12-14 10:03:29.067','2025-01-01 10:03:29.067')
				Select DATEDIFF(DAY,'2024-12-14 10:03:29.067','2025-01-01 10:03:29.067')
				Select DATEDIFF(YEAR,'2024-12-14 10:03:29.067','2025-01-01 10:03:29.067')
		
	-- String function
		-- Len() :
			Length return no of char in string.

			-- Example :
				Select LEN('Hello World') as StringLength

		-- Concat()
			Merge two or more string and return as a single value.

			-- Syntax 
				Select concat(string1, string2...stringN)

			-- Example :
				Select concat('Hello',' ','World') as StringConcat
				Select concat('Hello ','World') as StringConcat

		-- Concat with +
			Merge value / concat value using + icon.

			-- Syntax :
				Select value1 + value2 + ... valueN

			-- Example :
				Select 'Hello' + 'World' as StringConcat

		-- Concat_ws
			Add seperator after every string.

			-- Syntax :
				Select concat_ws(expression/Seperator,value1,value2..valueN)

			-- Example :
				Select concat_ws(' ','Hello','WorldWeltec','.com') as StringWithSeperator

				Select concat_ws('@','Hello','WorldWeltec','.com') as StringWithSeperator

		-- Lower
			Return value in lower case.

			-- Syntax :
				Select lower(string)

			-- Example :
				Value = 'aBCdEfGHI'

				Select lower('aBCdEfGHI')
			
		-- Upper
			Return value in upper case

			-- Syntax 
				Select upper(value)

			-- Example :
				Value = 'aBCdEfGHI'

				Select upper('aBCdEfGHI')

		-- trim
			Remove whitespace from left side and right side of the string.

			-- Example:
				Select '   Hello World    ' --   Hello World    
				Select trim('   Hello World    ') as trimwhitespace --Hello World

		-- ltrim
			Remove whitespace from left side of the string.

			-- Example :
				Select '   Hello World    ' --   Hello World    
				Select ltrim('   Hello World    ') as ltrimwhitespace --Hello World    
		-- rtrim 
			Remove whitespace from right side of the string.

			-- Example :
				Select '   Hello World    ' --   Hello World    
				Select rtrim('   Hello World    ') as rtrimwhitespace --   Hello World

		-- Reverse()
			Return string in reverse form.

			-- Example :
				Select reverse('Hello World')

		-- CharIndex()
			Return index of char from string.

			-- Syntax :
				Select charindex(expression, string)

			-- Example :
				Select charindex('l','Hello')
				
		-- Substring()
			When we need to extract char from string.
			Index start with 1.
			
			-- Syntax :
				Select Substring('string',starting_index,count)

			-- Example :
				Select substring('Hello World',2,5)