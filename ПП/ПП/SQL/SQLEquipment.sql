Create database Equipment -- ОБОРУДОВАНИЕ ДЛЯ БЛАГОУСТРОЙСТВА ОБЩЕСТВЕННЫХ И ДВОРОВЫХ ТЕРРИТОРИЙ
Go
Use Equipment -- ОБОРУДОВАНИЕ
Go
Create table GOST -- ГОСТ
(
GOSTID int primary key not null,
DescriptionGOST varchar(100) not null, -- КРАТКОЕ ОПИСАНИЕ
)
Create table Product -- ТОВАР
(
ProductID int primary key identity(1,1),
NameProduct varchar(100) not null,
Movable varchar(5), --ПОДВИЖНЫЙ/НЕ ПОДВИЖНЫЙ
DrawingNumber varchar(25) not null,
GOST int not null,
Picture varbinary(max),
Price money,
Foreign key (GOST) references GOST(GOSTID),
Check (Movable = 'Да' or Movable = 'Нет') 
)
Create table Customer -- ЗАКАЗЧИК
(
CustomerID int primary key identity(1,1),
FamilyCustomer varchar(50) not null,
NameCustomer varchar(50) not null,
PatronimycCustomer varchar(50) not null,
PassportData varchar(20) unique check (PassportData !=''),
Phone varchar(20),
)
Create table [Order] -- ЗАКАЗ
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
Insert into GOST (GOSTID, DescriptionGOST) values  -- ГОСТ
(1177,'Покрытия'),
(52167,'Качели'),
(52168,'Горки'),
(52299,'Качалки'),
(52300,'Карусели'),
(57538,'Уличные тренажеры'),
(54847,'Канатные дороги'),
(19120,'Лавочки'),
(55678,'Спортивно-развивающее оборудование'),
(12917,'Урны')
Insert into Product (NameProduct, Movable, DrawingNumber, GOST, Price) values -- ТОВАР
('Скамья','Нет','ЗМ-5.0-00',19120,'10185'),
('Качалка-балансир','Да','ЗМ-3.1-00',52299,'12125'),
('Качели','Да','ЗМ-3.0-14',52167,'21825,00'),
('Детский игровой комплекс','Нет','ЗМ-2.0-19', 52168,'68870'),
('Спортивно-игровой комплекс','Нет','ЗМ-2.1-35', 55678, '87300'),
('Карусель','Да','ЗМ-3.2-00',52300, '32980'),
('Горка','Нет','ЗМ-3.3-01', 52168, '36860'),
('Диван-садово парковый','Нет','ЗМ-5.0-08', 19120, '17945'),
('Диван качели с навесом','Да','ЗМ-5.0-14', 19120, '31040'),
('Лавочка','Нет','ЗМ-5.1-00', 19120, '6305'),
('Урна','Нет','ЗМ-6.0-09', 12917, '4074')
Insert into Customer (FamilyCustomer, NameCustomer, PatronimycCustomer, PassportData, Phone) values -- ЗАКАЗЧИК
('Иванов', 'Иван', 'Иванович', '6014 620859', '+7-900-123-12'),
('Сергеев', 'Сергей', 'Сергеевич', '3240 532312', null),
('Солнцев', 'Владимир', 'Владимирович', '4220 621532', '+7-990-321-41'),
('Егоров', 'Егор', 'Егорович', '5310 213420', '+7-900-333-32'),
('Дебров', 'Владислав', 'Павлович', '5240 520320', '+7-960-345-56')
Insert into [Order] (Product, Customer, Amount, [Address]) values -- ЗАКАЗ
(3, 1, 3, 'ул.Красноармейская-2, дом 2'),
(11, 1, 6, 'ул.Краноармейская-2, дом 2'),
(1,2,3, 'ул.Бужева, дом 12'),
(3,2,3, 'ул.Бужева, дом 12'),
(10,2,1,'ул.Бужева, дом 12'),
(2,3,2,null)