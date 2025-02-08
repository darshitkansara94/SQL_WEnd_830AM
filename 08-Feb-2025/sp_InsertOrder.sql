Alter procedure sp_InsertOrder

As
Begin
	Begin try
		Insert into tbl_OrderMaster(Category_Id,Order_Name)
		values('abc','Lenovo')
	End try
	Begin catch
		print('Operation failed')
	End catch
End

Exec sp_InsertOrder