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

Go
Create trigger  UpdateFaculty
On Faculty
For update
as
Print 'Попытка изменения данных' + STR (@@ROWCOUNT) + ' строк в таблице IDFaculty'
IF update(FacultyID)  
Begin
Print 'Изменения допускаются только в таблице NameFaculty'
Rollback transaction
End

Go
Create trigger UpdateTopic
On Topic
For delete
as
Print 'Попытка удаление данных'
Print 'Удаление запрещено'
Rollback transaction 

Go
Create trigger DeleteExam
On Exam
For delete 
as 
Print 'Попытка удаления данных'
Print 'Удаление данных запрещенно'
Rollback transaction

Go
Create trigger DeleteDiplom
On DiplomMark
For delete 
as 
Print 'Попытка удаления данных'
Print 'Удаление данных запрещенно'
Rollback transaction
