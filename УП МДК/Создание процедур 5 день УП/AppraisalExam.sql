/* ����� ���� ��������� � ������� �� ������ �� ������� */
Use University
Go
Create procedure AppraisalExam as
Begin
Select GradeBook, FamilyStudent, NameStudent, PatronymicStudent, NameExam, AppraisalExam  from Student, Exam
Where GradeBook=GradeBookID
if @@ROWCOUNT=0
print '������.'
End