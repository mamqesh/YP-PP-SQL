
/*����� ���������� ��������� ������� �� ����� �������*/
Use University
Go
Create procedure NoPassExam as
Begin
Declare @Mark int = 2
Select Count(GradeBookID) as result from Student, Exam
Where GradeBookID=GradeBook and AppraisalExam=@Mark
Group by GradeBook
If @@ROWCOUNT = 0
Print '����� ��������� ���.'
End
/*����� ��� ��������, � ���� ��� ������ ��������*/ 
Go
Create procedure NoPhoneTeacher as
Begin
Select NameTeacher, FamilyTeacher, PatronymicTeacher, Phone from Teacher
Where Phone is null 
if @@ROWCOUNT=0
Print '�� �������.'
End
/* ����� ���� ��������� � ������� �� ������ �� ������� */
Go
Create procedure AppraisalExam as
Begin
Select GradeBook, FamilyStudent, NameStudent, PatronymicStudent, NameExam, AppraisalExam  from Student, Exam
Where GradeBook=GradeBookID
if @@ROWCOUNT=0
print '������.'
End
/* ����� ��������, ������� ���������� ���� ��� �������. */
Go
Create procedure TopicDiplom as
Begin
Select TeacherID, NameTeacher, FamilyTeacher, PatronymicTeacher, Topic  from Teacher, Topic 
Where Teacher=TeacherID
if @@ROWCOUNT=0
print '������.'
End
GO
------------------------- ������� 
/*������ ��������. */
Create procedure AddStudent
@gradebook int,
@family varchar (30),
@name varchar (30),
@patronymic varchar (30),
@group int,
@faculty int,
@topic int
as
Begin
Insert into Student (GradeBookID, FamilyStudent, NameStudent, PatronymicStudent, [Group], Faculty, Topic) values
(@gradebook, @family, @name, @patronymic, @group, @faculty, @topic)
End
------------------------- ������� �������� 

/*����� ���������� ��������� � ������*/
Go
Create procedure NumberOfStudent
@group int
as
Begin
Select [Group], Count(GradeBookID) as Result from Student 
Where [Group]=@group
Group by [Group]
End