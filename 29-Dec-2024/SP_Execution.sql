Implement Insert, Update, Delete and Select (Select All and Select By Id) in single
Store procedure.

1. We will create new SP
2. Use condition
3. Verify condition through Parameter in SP.

use Students_DB

Select * from tbl_StudentDetail

Exec sp_CRUDStudentDetailMaster
	@Type = 'Insert',
	@Student_Id = 2,
	@StudentDetail_Subject = 'Science',
	@StudentDetail_Marks = 56,
	@StudentDetail_Std = 10

Exec sp_CRUDStudentDetailMaster
	@Type ='Delete',
	@StudentDetail_Id = 22

Exec sp_CRUDStudentDetailMaster
	@Type = 'Select'

Exec sp_CRUDStudentDetailMaster
	@Type = 'Select',
	@Student_Id = 4
