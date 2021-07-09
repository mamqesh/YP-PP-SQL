/* Вывести студентов у кого дипломная оценка 4. */
Use University
Go 
Declare @Mark int = '4'
Declare @Null varchar(30)
Select FamilyStudent, NameStudent, PatronymicStudent, AppraisalDiplom  from DiplomMark, Student
Where AppraisalDiplom = @Mark and GradeBook=GradeBookID
If @@ROWCOUNT=0
Print 'Таких студентов нет'
