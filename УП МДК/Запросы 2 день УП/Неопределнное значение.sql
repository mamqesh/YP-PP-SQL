/*Найти тех учителей, у кого нет номера телефона*/ 
Use University
Go
Select NameTeacher, FamilyTeacher, PatronymicTeacher, Phone from Teacher
Where Phone is null 
if @@ROWCOUNT=0
Print 'Не найдено.'