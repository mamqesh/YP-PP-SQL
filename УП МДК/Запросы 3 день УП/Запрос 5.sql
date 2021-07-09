--Найти группы, количество которых превышают 3
Use University
Go
Select  [Group], Count(GradeBookID) as Result from Student 
Group by [Group]
Having Count(GradeBookID)>3
If @@rowcount = 0
Print 'Ошибка'