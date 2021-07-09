/* Найти учителей, которые предлагают темы для диплома. */
Use University
Go
Create procedure TopicDiplom as
Begin
Select TeacherID, NameTeacher, FamilyTeacher, PatronymicTeacher, Topic  from Teacher, Topic 
Where Teacher=TeacherID
if @@ROWCOUNT=0
print 'Ошибка.'
End