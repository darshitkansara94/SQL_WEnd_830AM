Create procedure sp_SelectStudentDetailById
(
	@StudentDetail_Id int
)
As
Begin
	Select StudentDetail_Id,StudentDetail_Subject,StudentDetail_Standard,
		StudentDetail_Marks from tbl_StudentDetail
	Where 
		StudentDetail_Id = @StudentDetail_Id
End