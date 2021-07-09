/* Найти студентов 1993.01.01 до 1997.01.01 */
Use University
Go
Declare @Born1 date = '1993.01.01'
Declare @Born2 date = '1997.01.01' 
Select GradeBookID, NameStudent, FamilyStudent, PatronymicStudent, Born from Student
Where Born between @Born1 and @Born2
if @@ROWCOUNT=0
print 'Таких студентов нет, либо данные введены не верно.'
