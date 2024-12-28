Alter procedure sp_InsertStudentDetail
(
	@StudentDetail_Id int,
	@Student_Id int,
	@StudentDetail_Subject nvarchar(25),
	@StudentDetail_Marks decimal(10,2) = null,
	@StudentDetail_Std int
)
As
Begin
	Insert into tbl_StudentDetail(StudentDetail_Id,Student_Id,StudentDetail_Subject,StudentDetail_Marks,
		StudentDetail_Standard)
	values(@StudentDetail_Id,@Student_Id,@StudentDetail_Subject,@StudentDetail_Marks,
		@StudentDetail_Std)
End