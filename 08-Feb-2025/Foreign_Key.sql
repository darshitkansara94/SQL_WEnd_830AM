Foreign Key :
	Foreign key create relation between two tables.
	Primary key of parent table and referene key of child table.
	
	Advantage :
		We can not insert a record in child table until it is availble
			in parent table
		We can not delete record from parent table while 
			it is used in child table

	-- Syntax :
		-- While create new table
		Create table tbl_1
		(
			column1 datatype,
			column2 datatype,
		)

		Create table tbl_2
		(
			column1 datatype,
			column2 datatype,
			column3 datatype

			constraint fk_name  
			foreign key (column_name) references tbl_1(column_name)
		)

		-- Add foreign key in existing table
		Alter table tbl_Name
		Add constraint fk_name foreign key (column_Name)
		references tbl_Name(column_name)

		-- Example :
			create database Ecommerce
			use Ecommerce
			-- Parent Table
			create table tbl_category
			(
				Catagory_ID int identity(1,1) primary key,
				Catagory_Name Nvarchar(50)
			)

			-- Child Table
			create table tbl_Subcategory
			(
				Category_ID int,
				Subcatagory_ID int identity(1,1) primary key,
				Subcatagory_Name Nvarchar(50),

				Constraint fk_CategoryId foreign key (Category_ID)
				references tbl_Category(Catagory_ID)
			)

			Insert into tbl_category(Catagory_Name)
			values('Laptop')

			Insert into tbl_Subcategory(Category_ID,Subcatagory_Name)
			values(1,'HP')

			Select * from tbl_category
			Select * from tbl_Subcategory

			Delete from tbl_category where Catagory_ID = 1

			Create table tbl_OrderMaster
			(
				Order_Id int primary key identity(1,1),
				Category_Id int,
				Order_Name nvarchar(20)
			)

			-- Add foreign key for tbl_OrderMaster
			Alter table tbl_OrderMaster
			Add constraint fk_CategoryIdOnOrderMaster foreign key (Category_Id)
			references tbl_category(Catagory_ID)

		-- Delete foreign key
		To remove foreign key from table.

		-- Syntax :
			Alter table tbl_Name
			Drop constraint fk_name

		-- Example
			Alter table tbl_OrderMaster
			Drop constraint fk_CategoryIdOnOrderMaster