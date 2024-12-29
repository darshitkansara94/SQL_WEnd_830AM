Alter procedure sp_CRUDStudentDetailMaster
(
	@Type nvarchar(10),
	@StudentDetail_Id int = 0,
	@Student_Id int = 0,
	@StudentDetail_Subject nvarchar(25) = null,
	@StudentDetail_Marks decimal(10,2) = 0,
	@StudentDetail_Std int = 0
)
As
Begin
	If (@Type = 'Insert')
	Begin
		Insert into tbl_StudentDetail(Student_Id,StudentDetail_Subject,StudentDetail_Marks,
			StudentDetail_Standard)
		values(@Student_Id,@StudentDetail_Subject,@StudentDetail_Marks,
			@StudentDetail_Std)
	End
	Else if (@Type = 'Update')
	Begin
		Update tbl_StudentDetail Set
			StudentDetail_Subject = @StudentDetail_Subject,
			StudentDetail_Marks = @StudentDetail_Marks,
			StudentDetail_Standard = @StudentDetail_Std
		Where
			StudentDetail_Id = @StudentDetail_Id
	End
	Else If (@Type = 'Delete')
	Begin
		Delete from tbl_StudentDetail 
		Where
			StudentDetail_Id = @StudentDetail_Id
	End
	Else If (@Type = 'Select')
	Begin
		If (@Student_Id = 0)
		Begin
			Select StudentDetail_Id,Student_Id, StudentDetail_Subject,
				StudentDetail_Marks,StudentDetail_Standard
			from tbl_StudentDetail
		End
		Else
		Begin
			Select StudentDetail_Id,Student_Id, StudentDetail_Subject,
				StudentDetail_Marks,StudentDetail_Standard
			from tbl_StudentDetail
			Where Student_Id = @Student_Id
		End
	End
End