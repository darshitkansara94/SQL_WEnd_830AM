Alter procedure sp_InsertAndSelectStudentDetail
(
	@Student_Id int,
	@StudentDetail_Subject nvarchar(25),
	@StudentDetail_Marks decimal(10,2) = null,
	@StudentDetail_Std int
)
As
Begin
	Declare @Detail_Id int

	Insert into tbl_StudentDetail(Student_Id,StudentDetail_Subject,StudentDetail_Marks,
		StudentDetail_Standard)
	values(@Student_Id,@StudentDetail_Subject,@StudentDetail_Marks,
		@StudentDetail_Std)
	
	Set @Detail_Id = SCOPE_IDENTITY()

	Print(@Detail_Id)

	Select StudentDetail_Id,Student_Id,StudentDetail_Subject,StudentDetail_Marks,
		StudentDetail_Standard
	from tbl_StudentDetail Where StudentDetail_Id = @Detail_Id
End