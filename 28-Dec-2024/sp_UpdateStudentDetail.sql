1.
Create procedure sp_UpdateStudentDetail
(
	-- Parameters
	@StudentDetail_Marks decimal(10,2),
	@StudentDetail_Std int,
	@StudentDetail_Subject nvarchar(25),
	@StudentDetail_Id int
)
As
Begin
	-- SQL statement (Insert / Update / Delete / Select)
	Update tbl_StudentDetail Set
		StudentDetail_Marks = @StudentDetail_Marks, StudentDetail_Standard = @StudentDetail_Std, 
		StudentDetail_Subject = @StudentDetail_Subject
	Where StudentDetail_Id = @StudentDetail_Id
End

2. 
Select * from tbl_StudentDetail

3.
Update tbl_StudentDetail Set
	StudentDetail_Marks = 25.23, StudentDetail_Standard = 5, StudentDetail_Subject = 'Gujarati'
Where StudentDetail_Id = 2
