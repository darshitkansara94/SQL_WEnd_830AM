Constraint :
	To create set of rules on table.

	Types of constraint :
		Primary key
		Foreign Key

		Not null :
			User can set a rule that client must enter a value for that column.
			Value can not be null.

			-- Example :
				Create table tbl_Test1
				(
					Test_Id int primary key identity(1,1),
					Test_Name nvarchar(10),
					Test_Email nvarchar(50) not null
				)

				Insert into tbl_Test1(Test_Name,Test_Email) values('ABC','a@abc')

		Default :
			Set some value if user is not enter into that column.
			We can apply default on multiple columns.

			-- Example :
				Create table tbl_Test2
				(
					Test_Id int primary key identity(1,1),
					Test_Name nvarchar(20) default 'Unknown',
					Test_Email nvarchar(50)
				)

				Select * from tbl_Test2

				Insert into tbl_Test2(Test_Email) values('a@abc')

				Insert into tbl_Test2(Test_Name) values('ABC')
				
				-- Modify in existing table
				Alter table tbl_Test2
				add constraint cn_DefaultEmail default 'Unknown' for Test_Email

				-- Remove constraint
				Alter table tbl_Test2
				drop constraint cn_DefaultEmail

		Check :
			To validate entered data we can use check constraint

			-- Example :
				Create table tbl_Test3
				(
					Test_Id int primary key identity(1,1),
					Test_Name nvarchar(20) default 'Unknown',
					Test_Email nvarchar(50),
					Test_Age int,

					constraint ck_Age check(Test_Age >= 18)
				)

				insert into tbl_Test3(Test_Email,Test_Age)
				values('abc',20)

				insert into tbl_Test3(Test_Email,Test_Age)
				values('abc',19)

				-- Modify in existing table
				Alter table tbl_Test3
				Add constraint cn_Age check(Test_Age >= 20)

				-- Drop constraint
				Alter table tbl_test3
				Drop constraint cn_Age
		Unique :
			Unique key make sure all values for that column is unique.
			If we already have duplicate values in table then we can not create unique key.
			For that first we have to remove duplicate values and then we can create unique key.
			We can insert only one null value.

			-- Example :
				Create table tbl_Test4
				(
					Test_Id int primary key identity(1,1),
					Test_Name nvarchar(20),
					Test_Email nvarchar(50),
					Test_Age int,

					constraint cn_Name unique(Test_Name)
				)

				select * from tbl_Test4

				Insert into tbl_Test4(Test_Name) values('xyz')

				-- Modify existing table
					Alter table tbl_Test4
					Add constraint cn_Email unique(Test_Email)

