/* Найдите мужчин из преподавательского состава  */
Use University
Go
Select NameTeacher, FamilyTeacher, PatronymicTeacher, Phone from Teacher
Where PatronymicTeacher Like'%ич'
if @@ROWCOUNT=0
print 'Нет результата'