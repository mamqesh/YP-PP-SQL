--������� ��� ������
Use Equipment
Go
Select NameProduct, FamilyCustomer,NameCustomer,PatronimycCustomer, Amount from Customer, [Order], Product
Where Customer=CustomerID and Product=ProductID

--������� ���� � ������� ��������
Select GOSTID, NameProduct from GOST, Product
Where GOSTID=GOST

--������� ����������, ��� �� ������ ����� ��������
Select  FamilyCustomer, NameCustomer, PatronimycCustomer from Customer
Where Phone is null

--������� ����������, ��� �� ������ �����
Select NameCustomer, FamilyCustomer, PatronimycCustomer from Customer, [Order]
Where CustomerID=Customer and [Address] is null

--������� ����� ����� ������ � ������� �������
Select NameProduct, NameCustomer, FamilyCustomer, PatronimycCustomer, Amount,Amount*Price as Result from Product, Customer, [Order]
Where ProductID=Product and CustomerID=Customer 

--������� ��� ��������� �������� --�����������
Select ProductID, NameProduct from Product

--������� ���������� ������� 
Select Count(OrderID) as Result from [Order]

--����� ����� �� ������������� �����
Declare @GOST int = 19120
Select GOSTID, NameProduct from GOST, Product
Where GOSTID=GOST and GOSTID=@GOST
If @@ROWCOUNT=0
Print '���� ������ �� �����. ��������� ������.'

--������� ���������� ��������� � ��� ����� ������
Declare @PassportData varchar(20) = '4220 621532'
Select NameCustomer, FamilyCustomer, PatronimycCustomer, NameProduct, Amount, Amount*Price as Result from Customer, [Order], Product
Where Customer=CustomerID and Product=ProductID and PassportData=@PassportData
If @@ROWCOUNT=0
Print '�������� ������ �� �����. ������������� ������.'

--������� ��� ������ �� ��������� �����
Declare @Address varchar(100) = '��.��������������-2, ��� 2'
Select  Phone, [Address], Amount, NameProduct from Customer, [Order], Product
Where CustomerID=Customer and ProductID=Product and [Address]=@Address
If @@ROWCOUNT = 0
Print '����� ������ �� �����. ��������� ������.'

--������� ��������� � ��� �����
Declare @Adres varchar(100) = '��.��������������-2, ��� 2'
Declare @PassData varchar(50) = '5240 520320'
Select FamilyCustomer, NameCustomer, PatronimycCustomer, [Address] from [Order], Customer
Where PassportData=@PassData and [Address]=@Adres
If @@ROWCOUNT=0
Print '������. ������ ������� �� �����.'

--�������� ���� ������ � ���� �� ��������
Declare @ProductN varchar(100)='�������'
Select NameProduct, DescriptionGOST, Price from Product, GOST
Where NameProduct=@ProductN and GOSTID=GOST
If @@ROWCOUNT=0
Print '������. ������ �������'