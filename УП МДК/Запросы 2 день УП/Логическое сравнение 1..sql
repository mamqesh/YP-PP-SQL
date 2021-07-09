
/* Выбрать студентов которые получили оценку за диплом 4 и 5 */
Use University
Go 
Declare @Mark1 int = '4'
Declare @Mark2 int = '5'
Select FamilyStudent, NameStudent, PatronymicStudent, AppraisalDiplom  from DiplomMark, Student
Where (GradeBook=GradeBookID and AppraisalDiplom = @Mark1) or (AppraisalDiplom = @Mark2 and GradeBook=GradeBookID)
If @@ROWCOUNT=0
Print 'Таких студентов нет'
