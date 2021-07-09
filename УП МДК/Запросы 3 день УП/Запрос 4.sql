-- Вывести студентов и количество сдаваемых экзаменов.
Use University
Go
Select NameStudent, FamilyStudent, PatronymicStudent, Count(Exam.ExamID) as Result from Student, Exam
Where GradeBook=GradeBookID
Group by NameStudent,FamilyStudent, PatronymicStudent
If @@ROWCOUNT = 0
Print 'Таких студентов нет.'