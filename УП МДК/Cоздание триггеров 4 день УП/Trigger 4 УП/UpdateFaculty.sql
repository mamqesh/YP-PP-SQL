Use University
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