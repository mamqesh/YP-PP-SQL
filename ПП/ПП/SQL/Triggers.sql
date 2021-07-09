Use Equipment
Go

Create trigger UpdatePass
On Customer
For update 
As
Print '������� ��������� ������ '+STR (@@ROWCOUNT)+' ����� � ������� PassportData'
If update (CustomerID) OR update (NameCustomer) OR update(FamilyCustomer) OR update (PatronimycCustomer) 
OR update(Phone) 
Begin 
Print '��������� �� ����������� � ������� PassportData'
Rollback transaction 
End

GO

Create trigger UpdateGOSTProduct
On Product
For update 
As
Print '������� ��������� ������ '+STR (@@ROWCOUNT)+' ����� � ������� GOST'
If update (NameProduct) OR update (Movable) OR update(DrawingNumber) OR update (Picture) 
OR update(Price) 
Begin 
Print '��������� �� ����������� � ������� GOST'
Rollback transaction 
End

GO

Create trigger DeleteGOST
On GOST
For delete
as
Print '������� �������� ������'
Print '�������� ���������'
Rollback transaction 

GO

Create trigger UpdateGOST
On GOST
For Update
as
Print '������� �������� ������'
Print '�������� ���������'
Rollback transaction 

GO

Create trigger DeleteOrder
On [Order]
For delete
as
Print '������� �������� ������'
Print '�������� ���������'
Rollback transaction 

GO

Create trigger UpdateOrder
On [Order]
For update
as
Print '������� ��������� ������'
Print '��������� ���������'
Rollback transaction 
