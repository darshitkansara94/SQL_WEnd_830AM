CREATE TABLE tbl_StudentDetail
(
	StudentDetail_Id INT PRIMARY KEY ,
	Student_Id INT,
	StudentDetail_Subject VARCHAR(25),
	StudentDetail_Marks DECIMAL(10,2),
	StudentDetail_Standard INT
)
Select StudentDetail_Subject,StudentDetail_Marks from tbl_StudentDetail
where Student_Id = 2

Insert Into tbl_StudentDetail (StudentDetail_Id,Student_Id,StudentDetail_Subject,StudentDetail_Marks,
			StudentDetail_Standard)
Values (1,2,'Maths',85.23,10),
(2,2,'Physics',75.56,10),
(3,2,'Chemastry',70.46,10),
(4,3,'Maths',76.23,10),
(5,3,'Physics',56.36,10),
(6,3,'Chemastry',95.46,10),
(7,4,'Maths',85.63,10),
(8,4,'Physics',55.76,10),
(9,4,'Chemastry',99.25,10)


