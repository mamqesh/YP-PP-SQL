/*����� ���������� ��������� ������� �� ����� �������*/
Use University
Go
Declare @Mark int = 2
Select Count(GradeBookID) as result from Student, Exam
Where GradeBookID=GradeBook and AppraisalExam=@Mark
Group by GradeBook
If @@ROWCOUNT = 0
Print '����� ��������� ���.'