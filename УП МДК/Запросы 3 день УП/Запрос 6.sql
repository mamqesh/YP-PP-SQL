-- Вывести количество предлогаемых тем у каждого преподавателя.
Use University
Go
Select FamilyTeacher, NameTeacher, PatronymicTeacher, Count(Topic.Teacher) as Result from Teacher, Topic
Where Teacher=TeacherID
Group by Topic.Teacher, FamilyTeacher, NameTeacher, PatronymicTeacher