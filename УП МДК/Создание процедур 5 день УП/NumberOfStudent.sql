Use University
Go
Create procedure NumberOfStudent
@group int
as
Begin
Select [Group], Count(GradeBookID) as Result from Student 
Where [Group]=@group
Group by [Group]
End