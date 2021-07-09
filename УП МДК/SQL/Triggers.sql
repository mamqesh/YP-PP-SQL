Use University
Go
Create trigger UpdateTeacher
On Teacher 
For update
as
Print '������� ��������� ������' +STR(@@ROWCOUNT)+' ����� � ������� Teacher'
If update (TeacherID) OR update (NameTeacher) OR update(FamilyTeacher) OR update (PatronymicTeacher) 
Begin 
Print '��������� ����������� ������ � �������� Power, Chair, Phone, EMail'
Rollback transaction 
End

Go

Create trigger UpdateStudent
On Student
For update 
As
Print '������� ��������� ������ '+STR (@@ROWCOUNT)+' ����� � ������� Student'
If update (GradeBookID) OR update (NameStudent) OR update(FamilyStudent) OR update (PatronymicStudent) 
OR update(Faculty) or update(Topic)
Begin 
Print '��������� ����������� ������ � �������� Group'
Rollback transaction 
End

Go
Create trigger  UpdateFaculty
On Faculty
For update
as
Print '������� ��������� ������' + STR (@@ROWCOUNT) + ' ����� � ������� IDFaculty'
IF update(FacultyID)  
Begin
Print '��������� ����������� ������ � ������� NameFaculty'
Rollback transaction
End

Go
Create trigger UpdateTopic
On Topic
For delete
as
Print '������� �������� ������'
Print '�������� ���������'
Rollback transaction 

Go
Create trigger DeleteExam
On Exam
For delete 
as 
Print '������� �������� ������'
Print '�������� ������ ����������'
Rollback transaction

Go
Create trigger DeleteDiplom
On DiplomMark
For delete 
as 
Print '������� �������� ������'
Print '�������� ������ ����������'
Rollback transaction
