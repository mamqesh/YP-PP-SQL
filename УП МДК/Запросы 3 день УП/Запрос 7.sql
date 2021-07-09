-- Вывести студентов и их оценки за дипломную работу с использованием сортировки.
Use University
Go
Select FamilyStudent, NameStudent, PatronymicStudent, AppraisalDiplom from Student, DiplomMark
Where GradeBook=GradeBookID
Order by AppraisalDiplom
if @@ROWCOUNT=0
print 'Ошибка.'