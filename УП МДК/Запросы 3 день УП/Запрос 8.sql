-- Вывести студентов и их оценки за экзамен с использованием сортировки.
Use University
Go
Select FamilyStudent, NameStudent, PatronymicStudent, NameExam, AppraisalExam from Student, Exam
Where GradeBook=GradeBookID
Order by AppraisalExam
if @@ROWCOUNT=0
print 'Ошибка.'