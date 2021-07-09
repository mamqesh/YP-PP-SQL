Use University
Go
Create trigger  UpdateFaculty
On Faculty
For update
as
Print 'ѕопытка изменени€ данных' + STR (@@ROWCOUNT) + ' строк в таблице IDFaculty'
IF update(FacultyID)  
Begin
Print '»зменени€ допускаютс€ только в таблице NameFaculty'
Rollback transaction
End