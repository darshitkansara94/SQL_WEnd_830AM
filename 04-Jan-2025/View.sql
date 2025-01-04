View :
	View creates virtual table in memory.
	Table is not accessible in the UI.
	But we can modify the SQl statement and according to that virtual table is change.
	View can combine one or more than one table and return data as combine of those tables.

	-- Syntax :
		Create view vw_Name as
		Select Statement

		-- Modify existing view
		Alter view vw_name as
		Select statment

		-- Delete view
		Drop view vw_name

	-- Example :
		Select * from tbl_StudentMaster

		Create view vw_StudentMaster as 
		Select * from tbl_StudentMaster

		Insert into tbl_StudentMaster(Student_Name) values('Chanda')

		Select * from vw_StudentMaster

		Select Student_Id,Student_Name,Student_Address from vw_StudentMaster

		Select Student_Id,Student_Name,Student_Gender from vw_StudentMaster

		Alter view vw_StudentData as
			Select sm.Student_Id,sm.Student_Name, sm.Student_Address,sd.StudentDetail_Subject,
			sd.StudentDetail_Marks, 'Test' as samplecol
			from tbl_StudentMaster as sm
			Inner join tbl_StudentDetail as sd on
				sd.Student_Id = sm.Student_Id

		Select * from vw_StudentData where samplecol = 'Test'

		-- Delete view
		Drop view vw_StudentMaster
