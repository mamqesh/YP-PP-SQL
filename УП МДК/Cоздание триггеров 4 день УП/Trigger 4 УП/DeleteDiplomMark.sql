Use University
Go
Create trigger DeleteDiplom
On DiplomMark
For delete 
as 
Print 'Попытка удаления данных'
Print 'Удаление данных запрещенно'
Rollback transaction
