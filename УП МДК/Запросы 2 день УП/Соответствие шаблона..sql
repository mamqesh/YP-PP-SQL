/* ������� ������ �� ������������������ �������  */
Use University
Go
Select NameTeacher, FamilyTeacher, PatronymicTeacher, Phone from Teacher
Where PatronymicTeacher Like'%��'
if @@ROWCOUNT=0
print '��� ����������'