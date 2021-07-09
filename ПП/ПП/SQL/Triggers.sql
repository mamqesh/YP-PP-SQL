Use Equipment
Go

Create trigger UpdatePass
On Customer
For update 
As
Print 'Попытка изменения данных '+STR (@@ROWCOUNT)+' строк в таблице PassportData'
If update (CustomerID) OR update (NameCustomer) OR update(FamilyCustomer) OR update (PatronimycCustomer) 
OR update(Phone) 
Begin 
Print 'Изменения не допускаются в таблице PassportData'
Rollback transaction 
End

GO

Create trigger UpdateGOSTProduct
On Product
For update 
As
Print 'Попытка изменения данных '+STR (@@ROWCOUNT)+' строк в таблице GOST'
If update (NameProduct) OR update (Movable) OR update(DrawingNumber) OR update (Picture) 
OR update(Price) 
Begin 
Print 'Изменения не допускаются в таблице GOST'
Rollback transaction 
End

GO

Create trigger DeleteGOST
On GOST
For delete
as
Print 'Попытка удаление данных'
Print 'Удаление запрещено'
Rollback transaction 

GO

Create trigger UpdateGOST
On GOST
For Update
as
Print 'Попытка удаление данных'
Print 'Удаление запрещено'
Rollback transaction 

GO

Create trigger DeleteOrder
On [Order]
For delete
as
Print 'Попытка удаление данных'
Print 'Удаление запрещено'
Rollback transaction 

GO

Create trigger UpdateOrder
On [Order]
For update
as
Print 'Попытка изменения данных'
Print 'Изменение запрещено'
Rollback transaction 
