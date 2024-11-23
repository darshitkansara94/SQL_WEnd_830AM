DataTypes:
	We are restricted or allowing user to enter particular types of data.
	Datatypes can be used within table, SP and in variable creation.

	-- Types of DataType :
		String:
			String is combintion of alphabet, numeric and special char.
			String always written in single quote('').
			-- Example :
				string1 = 'WelTech@123'
				string2 = 'WelTech123'
				string3 = 'WelTech'
				string4 = 'WelTech@#$'

			-- varchar :
				varchar store only single scrip language.
				It can store upto 8000 byte of data.
				varchar is not supported if our application has multiple language.
				In varchar datatype need to assign length.

				-- Synatx :
					column_name/ param/ variable varchar(length)

				-- Example : Assign varchar to firstname
					FirstName varchar(15)

					-- Max length
					FirstName varchar(max)

			-- nvarchar :
				nvarchar support multiple script language.
				It is unicode type of datatype
				nvarchar support 4000 bytes of data.

				-- Synatx :	
					column_name/ param/ variable nvarchar(length)

				-- Example : Assign varchar to firstname
					FirstName nvarchar(15)

					-- Max length
					FirstName nvarchar(max)

		Number :
			-- Types of number :
				int :
					int store numbers.
					Length of int is less than 10 number.

					-- Syntax :
						column_name/ param/ variable int

					-- Example :
						Age int

				bigint :
					bigint store large number of data.

					-- Syntax :
						column_name/ param/ variable bigint

					-- Example
						MobileNumber bigint
		char
			char use full lenght to store value, if lenght of value is less than mentioned char.

			-- Syntax :
				column_name/ param/ variable char(length)

			-- Example :
				FirstName char(10)

				Firstname value is 'Darshit' -> 7

				-- String (varchar and nvarchar)
					-- 'Darshit'
				-- char
					-- 'Darshit   '

		decimal :
			Value store with point('.') is consider as decimal.
			We need to assign length in decimal datatype.

			-- Syntax :
				column_name/ param/ variable decimal(18,2)
					-- decimal(18,2)
						-- 18 = Lenght of decimal datatype
						-- 2 = Lenght of number after point('.')

			-- Example :
				Price decimal(18,2)
					Price value = 123456789.45

				Price decimal(18,3)
					Price value = 123456789.450

		datetime :
			Datetime store date and time value only.
			If user is not assign time then SQL will take default time which is '00:00:00'

			-- Synatx :
				column_name/ param/ variable datetime

			-- Example :
				DateOfBirth datetime

		varbinary :
			Store binary type of data.
			String value convert into Binary type and store in varbinary datatype

			-- Syntax :
				column_name/ param/ variable varbinary(length)

			-- Example :
				Password varbinary(max)

		bit :
			Bit can store either 0 or 1. Other than that values are not supported in bit.

			-- Syntax :
				column_name/ param/ variable bit

			-- Example :
				Active bit
		double :		