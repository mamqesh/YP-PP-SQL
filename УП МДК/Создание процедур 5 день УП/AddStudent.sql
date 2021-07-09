Use University
Go
Create procedure AddStudent
@gradebook int,
@family varchar (30),
@name varchar (30),
@patronymic varchar (30),
@group int,
@faculty int,
@topic int
as
Begin
Insert into Student (GradeBookID, FamilyStudent, NameStudent, PatronymicStudent, [Group], Faculty, Topic) values
(@gradebook, @family, @name, @patronymic, @group, @faculty, @topic)
End