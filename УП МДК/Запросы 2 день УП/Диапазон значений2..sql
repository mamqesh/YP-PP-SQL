/* ����� �������� ����� � 10031 �� 10032 � ����� �� ����������*/
Use University
Go
Declare @Book1 int = 10031
Declare @Book2 int = 10033
Select GradeBookID, NameStudent, FamilyStudent, PatronymicStudent, [Group] from Student
Where GradeBookID between @Book1 and @Book2
If @@ROWCOUNT = 0
Print '����� �������� ���� ���.'