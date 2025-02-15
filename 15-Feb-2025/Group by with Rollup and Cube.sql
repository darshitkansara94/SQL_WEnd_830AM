Rollup and cube :
	Rollup :
		Display data with less description.
		Use with group by

		-- Syntax :
			Select column1,column2,Aggregatefunction(column_name)
				from tbl_name
			group by rollup(column1,column2)

		-- Example
			Use CrystalAndStone

			Select * from tbl_ProductMaster

			Select Product_Name,Product_Price,SUM(Product_Price) as Sum_Price 
				from tbl_ProductMaster
			group by rollup(Product_Name,Product_Price)

	-- Cube
		Cube display data in more detail with catergorized.

		-- Syntax :
			Select column1,column2,Aggregatefunction(column_name)
				from tbl_name
			group by cube(column1,column2)

		-- Example :
			Select Product_Name,Product_Price,SUM(Product_Price) as Sum_Price 
				from tbl_ProductMaster
			group by cube(Product_Name,Product_Price)