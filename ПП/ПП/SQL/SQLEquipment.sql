Create database Equipment -- ������������ ��� ��������������� ������������ � �������� ����������
Go
Use Equipment -- ������������
Go
Create table GOST -- ����
(
GOSTID int primary key not null,
DescriptionGOST varchar(100) not null, -- ������� ��������
)
Create table Product -- �����
(
ProductID int primary key identity(1,1),
NameProduct varchar(100) not null,
Movable varchar(5), --���������/�� ���������
DrawingNumber varchar(25) not null,
GOST int not null,
Picture varbinary(max),
Price money,
Foreign key (GOST) references GOST(GOSTID),
Check (Movable = '��' or Movable = '���') 
)
Create table Customer -- ��������
(
CustomerID int primary key identity(1,1),
FamilyCustomer varchar(50) not null,
NameCustomer varchar(50) not null,
PatronimycCustomer varchar(50) not null,
PassportData varchar(20) unique check (PassportData !=''),
Phone varchar(20),
)
Create table [Order] -- �����
(
OrderID int primary key identity(1,1),
Product int not null,
Customer int not null,
Amount int not null,
[Address] varchar(100),
[Data] date,
Foreign key (Product) references Product(ProductID),
Foreign key (Customer) references Customer(CustomerID),
)

Use Equipment 
Go
Insert into GOST (GOSTID, DescriptionGOST) values  -- ����
(1177,'��������'),
(52167,'������'),
(52168,'�����'),
(52299,'�������'),
(52300,'��������'),
(57538,'������� ���������'),
(54847,'�������� ������'),
(19120,'�������'),
(55678,'���������-����������� ������������'),
(12917,'����')
Insert into Product (NameProduct, Movable, DrawingNumber, GOST, Price) values -- �����
('������','���','��-5.0-00',19120,'10185'),
('�������-��������','��','��-3.1-00',52299,'12125'),
('������','��','��-3.0-14',52167,'21825,00'),
('������� ������� ��������','���','��-2.0-19', 52168,'68870'),
('���������-������� ��������','���','��-2.1-35', 55678, '87300'),
('��������','��','��-3.2-00',52300, '32980'),
('�����','���','��-3.3-01', 52168, '36860'),
('�����-������ ��������','���','��-5.0-08', 19120, '17945'),
('����� ������ � �������','��','��-5.0-14', 19120, '31040'),
('�������','���','��-5.1-00', 19120, '6305'),
('����','���','��-6.0-09', 12917, '4074')
Insert into Customer (FamilyCustomer, NameCustomer, PatronimycCustomer, PassportData, Phone) values -- ��������
('������', '����', '��������', '6014 620859', '+7-900-123-12'),
('�������', '������', '���������', '3240 532312', null),
('�������', '��������', '������������', '4220 621532', '+7-990-321-41'),
('������', '����', '��������', '5310 213420', '+7-900-333-32'),
('������', '���������', '��������', '5240 520320', '+7-960-345-56')
Insert into [Order] (Product, Customer, Amount, [Address]) values -- �����
(3, 1, 3, '��.���������������-2, ��� 2'),
(11, 1, 6, '��.��������������-2, ��� 2'),
(1,2,3, '��.������, ��� 12'),
(3,2,3, '��.������, ��� 12'),
(10,2,1,'��.������, ��� 12'),
(2,3,2,null)