/*Найти количество студентов в группе*/
Use University
Go
Declare @Group int = 100

Select  [Group], Count(GradeBookID) as Result from Student 
Where [Group]=@Group
Group by [Group]
If @@rowcount = 0
Print 'Группы не существует'