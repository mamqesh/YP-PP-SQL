/* Найти студентов из одной группы с одинаковой оценкой */
Use University
Go
Declare @Mark int = 4
Declare @Group int = 100
Select FamilyStudent, NameStudent, PatronymicStudent, [Group], AppraisalDiplom from DiplomMark, Student
Where (GradeBook=GradeBookID and AppraisalDiplom = @Mark) and ([Group] = @Group and GradeBook=GradeBookID)
If @@ROWCOUNT = 0
print 'Таких студентов нет.'