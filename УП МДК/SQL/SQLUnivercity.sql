Create database University 
Go
Use University 
Go
Create table Teacher
(
TeacherID int primary key,
FamilyTeacher varchar(30),
NameTeacher varchar(30),
PatronymicTeacher varchar(30),
[Power] varchar(50),
Chair varchar(50),
Phone varchar(20),
EMail varchar(100)
)

Create table Topic 
(
TopicID int primary key,
Teacher int,
Topic varchar(255),
Foreign key (Teacher) references Teacher(TeacherID),
)

Create table Faculty
(
FacultyID int identity(1,1) primary key,
NameFaculty varchar(50)
)
Create table Student 
(
GradeBookID int primary key,
FamilyStudent varchar(30),
NameStudent varchar(30),
PatronymicStudent varchar(30),
Born date,
[Group] int,
Faculty int,
Foreign key (Faculty) references Faculty(FacultyID),
Topic int,
Foreign key (Topic) references Topic(TopicID)
)

Create table Exam
(
ExamID int identity(1,1) primary key,
GradeBook int,
Foreign key (GradeBook) references Student(GradeBookID),
NameExam varchar(40),
AppraisalExam int,
Check (AppraisalExam >= '2'),
Check (AppraisalExam <= '5'),
)

Create table DiplomMark
(
IDMark int primary key,
GradeBook int,
Foreign key (GradeBook) references Student(GradeBookID),
AppraisalDiplom int, 
Check (AppraisalDiplom >= '2'),
Check (AppraisalDiplom <= '5'),

)

Insert into  Teacher (TeacherID, FamilyTeacher, NameTeacher, PatronymicTeacher, [Power], Chair, Phone, Email)
values 
('1','������','�����','�����','�������� �������������� ����','�����','+79968982555','macron@france.ru'),
('2','������','������','��������','������ ����','������','+79091722988','merkel@germany.ru'),
('3','�������','����','���������','������ ����','������� �������������','+79257662554','navalny@navalny.ru'),
('4','�����','��������','��������','�������� �������������� ����','���������','+79227661236','putya@lox.com'),
('5','�������','����','���������','������ ����','���������','+79003803085','sobol@navalny.ru'),
('6','��������','�����','����������','������ ����','��������','+79091722984','kiselev@rf.ru'),
('7','������','��������','������������','�������� �������������� ����','�������������','+79943661221','soloviev@deb.ru'),
('8','������','�������','�����������','������ ����','������','+79007803003','FreeNavalnii@mail.ru'),
('9','�����','�����','���������','������ ����','�������������','+79091543645','FreeRussia@etoproidet.ru'),
('10','�����','����','���������','�������� �������������� ����','���������� �������','+79968003456','jailbreak@mail.ru');
Insert into Topic(TopicID, Teacher, Topic)
values
('1','10','������ � ��������� �������� ��������� ������������� ������������� �������� �������, ��������� � �����������.'),
('2','9','������, ������������ � �������� �������� ������� �����������'),
('3','8','������ � ��������� ��������, ��������� ������������� ������������� �������� ������� �����������'),
('4','7','���������� ����������� ������� �����������'),
('5','6','������������ � ������ ������������� �������������� ��������� �����������'),
('6','5','������������ ������� �������� �� �����������'),
('7','3','����������� ������������� ������� �����������'),
('8','3','����������� ������ ���������� ��������� ����������� ���������'),
('9','1','�������� ������� � ��������� ��������� ������������������ �����'),
('10','1','������������ ����� �������� � ��������� ���������� �������������');

Insert into Faculty (NameFaculty)
values
('����������������'),
('��������������'),
('���������������'),
('�����������');

Insert into Student (GradeBookID, FamilyStudent, NameStudent, PatronymicStudent, Born, [Group], Faculty, [Topic])
values 
('10031','������','����','��������', '19.01.2000','102', '1','10'),
('10032','������','����','�������������', '20.02.1997','102', '2', '9'),
('10033','�����','��������','����������', '10.02.1993','102', '2', '8'),
('10034','�������','�������','���������', '11.03.1995','100', '1', '7'),
('10035','�������','��������','������������', '16.06.2000','100', '3','5'),
('10036','��������','����','������������', '23.07.1997','100', '3','6'),
('10037','������','����','��������', '24.06.1996','103', '4', '4'),
('10038','�������','�������','�����', '25.07.1997','103', '1','3'),
('10039','�������','�����','��������', '14.03.1995','103', '4','2'),
('10040','�����','����','��������', '15.04.1996','103', '2','1');
Insert into DiplomMark (IDMark, GradeBook,  AppraisalDiplom)
values
('1','10031','5'),
('2','10032','4'),
('3','10033','3'),
('4','10034','4'),
('5','10035','3'),
('6','10036','4'),
('7','10037','3'),
('8','10038','3'),
('9','10039','4'),
('10','10040','3');
Insert into Exam (GradeBook, NameExam, AppraisalExam)
values
('10031','����������','4'),
('10032','����������','4'),
('10033','����������','3'),
('10034','�������','4'),
('10035','�������','2'),
('10036','�������','5'),
('10037','������','5'),
('10038','������','3'),
('10039','������','3'),
('10040','�����','5'),
('10031','�����','3'),
('10032','�����','4');