-- ����� ��������, ������� ���������� ���� ��� �������.
Use University
Go
Select TeacherID, NameTeacher, FamilyTeacher, PatronymicTeacher, Topic  from Teacher, Topic 
Where Teacher=TeacherID
if @@ROWCOUNT=0
print '������.'
