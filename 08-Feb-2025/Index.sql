Index :
	Index is use to make retrieval process fast.
	But creating multiple index on table can slow down 
		Insert, Update or Delete operation.
	We can create multiple index on single table.

	Types of Index :
		Clustered :
			Clustered index can be only one per table.
			Clustered index by default applied on Primary Key column.

			-- Syntax 
				Create clustered index idx_name 
				on tbl_name(column_name)
		Non-clustered :
			We can create multiple index on single table.

			-- Syntax :
				Create nonclustered index idx_name
				On tbl_name(column_name)

				Create unique nonclustered index idx_name
				on tbl_Name(column_name)

		Remove existing Index
		-- Delete index
					Drop index index_name on tbl_name

			-- Example :
				Create nonclustered index idx_OrderMaster_CategoryId
				on tbl_OrderMaster (Category_Id)

-- 				Delete from tbl_OrderMaster where Order_Id = 3

				Create unique nonclustered index idx_OrderMaster_OrderName
				on tbl_OrderMaster(Order_Name)

				Select * from tbl_OrderMaster

				Insert into tbl_OrderMaster(Category_Id,Order_Name)
				values(1,'HP')

				Drop index idx_OrderMaster_OrderName on tbl_OrderMaster 




