Use University
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