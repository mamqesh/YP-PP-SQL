-- Вывести всех студентов и их оценки за диплом.
Use University
Go
Select GradeBookID, FamilyStudent, NameStudent, PatronymicStudent, AppraisalDiplom from Student, DiplomMark
Where GradeBook=GradeBookID 
if @@ROWCOUNT=0
print 'Ошибка.'