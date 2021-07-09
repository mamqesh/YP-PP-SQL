Use University
Go
Create trigger UpdateTeacher
On Teacher 
For update
as
Print 'Попытка изменения данных' +STR(@@ROWCOUNT)+' строк в таблице Teacher'
If update (TeacherID) OR update (NameTeacher) OR update(FamilyTeacher) OR update (PatronymicTeacher) 
Begin 
Print 'Изменения допускаются только в столбцах Power, Chair, Phone, EMail'
Rollback transaction 
End