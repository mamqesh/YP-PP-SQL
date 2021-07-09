Use University
Go
Create trigger UpdateStudent
On Student
For update 
As
Print 'Попытка изменения данных '+STR (@@ROWCOUNT)+' строк в таблице Student'
If update (GradeBookID) OR update (NameStudent) OR update(FamilyStudent) OR update (PatronymicStudent) 
OR update(Faculty) or update(Topic)
Begin 
Print 'Изменения допускаются только в столбцах Group'
Rollback transaction 
End