Use Equipment
GO
-- ������� ��� ������ � �� �����
Create procedure AllOrder as
Begin
Select NameProduct, FamilyCustomer,NameCustomer,PatronimycCustomer, Amount*Price from Customer, [Order], Product
Where Customer=CustomerID and Product=ProductID
End
Go
--������� ����������, ��� �� ������ ����� �������� ��� �����
Create procedure NoPhoneOrAddress 
as
Begin
Select  FamilyCustomer, NameCustomer, PatronimycCustomer, Phone, [Address] from Customer, [Order]
Where (Phone is null or [Address] is null) and CustomerID=Customer 
End
Go
--������� ��� ������ �� ��������� �����
Create procedure OrderAddress
@Address varchar(100) as
Begin
Select  Phone, [Address], Amount, NameProduct from Customer, [Order], Product
Where CustomerID=Customer and ProductID=Product and [Address]=@Address
If @@ROWCOUNT = 0
Print '����� ������ �� �����. ��������� ������.'
End
Go
--������� ����� ��������� �� ��������
Create procedure PassDataOrder
@PassData varchar(50) as
Begin
Select FamilyCustomer, NameCustomer, PatronimycCustomer, [Address], NameProduct, Amount from [Order], Customer, Product
Where PassportData=@PassData and Customer=CustomerID and Product=ProductID
If @@ROWCOUNT=0
Print '������. ������ ������� �� �����.'
End
Go
--�������� ���� ������ � ���� �� ��������
Create procedure InfoProduct
@ProductN varchar(100) as 
Begin
Select NameProduct, GOSTID, Price from Product, GOST
Where NameProduct=@ProductN and GOSTID=GOST
If @@ROWCOUNT=0
Print '������. ������ ������� �������'
End
Go
-- �������� �����
Create procedure AddProduct 
@NameProduct varchar(100),
@Movable varchar(5),
@DrawingNumber varchar(20),
@GOST int,
@Price money as
Begin
Insert into Product(NameProduct, Movable, DrawingNumber, GOST, Price) values
(@NameProduct, @Movable, @DrawingNumber, @GOST, @Price) 
End
Go
-- �������� �����
Create procedure AddOrder
@ProductID int,
@CustomerID int,
@Amount int,
@Address varchar (100) as
Begin
Insert into [Order](Product, Customer, Amount, [Address]) values
(@ProductID, @CustomerID, @Amount, @Address)
End
Go
-- �������� ���������
Create procedure AddCustomer 
@Family varchar(50),
@Name varchar(50),
@Patronimyc varchar(50),
@Pass varchar(20),
@Phone varchar(20) as
Begin
Insert into Customer(FamilyCustomer, NameCustomer, PatronimycCustomer, PassportData, Phone) values
(@Family, @Name, @Patronimyc, @Pass, @Phone) 
End
Go