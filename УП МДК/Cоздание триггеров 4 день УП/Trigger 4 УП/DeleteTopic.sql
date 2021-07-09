Use University
Go
Create trigger UpdateTopic
On Topic
For delete
as
Print 'Попытка удаление данных'
Print 'Удаление запрещено'
Rollback transaction 