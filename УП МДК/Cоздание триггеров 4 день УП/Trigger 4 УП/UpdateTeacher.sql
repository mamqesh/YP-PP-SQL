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