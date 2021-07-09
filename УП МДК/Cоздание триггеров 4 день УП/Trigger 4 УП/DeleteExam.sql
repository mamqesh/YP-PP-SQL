Use University
Go
Create trigger DeleteExam
On Exam
For delete 
as 
Print 'Попытка удаления данных'
Print 'Удаление данных запрещенно'
Rollback transaction