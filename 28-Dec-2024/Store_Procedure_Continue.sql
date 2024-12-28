Store Procedure (Continue) :
	Create procedure with Insert statement :
		Insert into tbl_name(column1,column2,column3..)
		values(value1,value2,value3...)

	use Students_DB

	Select * from tbl_StudentDetail

	Exec sp_InsertStudentDetail 10,1,'Maths',57.23,9

	Exec sp_InsertStudentDetail 13,1,'Physics',null,9

	Exec sp_InsertStudentDetail 11,1,'SS',85

	Exec sp_InsertStudentDetail
		@StudentDetail_Id = 14,
		@Student_Id = 1,
		@StudentDetail_Subject = 'Chemastry',
		@StudentDetail_Std = 2

	Exec sp_InsertAndSelectStudentDetail
		@StudentDetail_Id = 15,
		@Student_Id = 1,
		@StudentDetail_Subject = 'Chemastry',
		@StudentDetail_Std = 2

	Exec sp_InsertAndSelectStudentDetail
		@StudentDetail_Id = 16,
		@Student_Id = 1,
		@StudentDetail_Subject = 'Chemastry',
		@StudentDetail_Std = 2

	Exec sp_InsertAndSelectStudentDetail
		@StudentDetail_Id = 17,
		@Student_Id = 1,
		@StudentDetail_Subject = 'Chemastry',
		@StudentDetail_Std = 2

	Exec sp_InsertAndSelectStudentDetail		
		@Student_Id = 1,
		@StudentDetail_Subject = 'Chemastry',
		@StudentDetail_Std = 2

	Select * from tbl_StudentDetail where StudentDetail_Id = 5

	Exec sp_UpdateStudentDetail
		@StudentDetail_Marks = 89.25,
		@StudentDetail_Std = 7,
		@StudentDetail_Subject = 'Gujarati',
		@StudentDetail_Id = 5