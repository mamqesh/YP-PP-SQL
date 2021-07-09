--ВЫВЕСТИ ВСЕ ЗАКАЗЫ
Use Equipment
Go
Select NameProduct, FamilyCustomer,NameCustomer,PatronimycCustomer, Amount from Customer, [Order], Product
Where Customer=CustomerID and Product=ProductID

--ВЫВЕСТИ ГОСТ У КАЖДОГО ПРОДУКТА
Select GOSTID, NameProduct from GOST, Product
Where GOSTID=GOST

--ВЫВЕСТИ ЗАКАЗЧИКОВ, КТО НЕ УКАЗАЛ НОМЕР ТЕЛЕФОНА
Select  FamilyCustomer, NameCustomer, PatronimycCustomer from Customer
Where Phone is null

--ВЫВЕСТИ ЗАКАЗЧИКОВ, КТО НЕ УКАЗАЛ АДРЕС
Select NameCustomer, FamilyCustomer, PatronimycCustomer from Customer, [Order]
Where CustomerID=Customer and [Address] is null

--ВЫВЕСТИ ОБЩУЮ СУММУ ЗАКАЗА У КАЖДОГО КЛИЕНТА
Select NameProduct, NameCustomer, FamilyCustomer, PatronimycCustomer, Amount,Amount*Price as Result from Product, Customer, [Order]
Where ProductID=Product and CustomerID=Customer 

--ВЫВЕСТИ ВСЕ ДОСТУПНЫЕ ПРОДУКТЫ --ПРЕДЛОЖЕНИЕ
Select ProductID, NameProduct from Product

--ВЫВЕСТИ КОЛИЧЕСТВО ЗАКАЗОВ 
Select Count(OrderID) as Result from [Order]

--НАЙТИ ТОВАР ПО ОПРЕДЕЛЕННОМУ ГОСТУ
Declare @GOST int = 19120
Select GOSTID, NameProduct from GOST, Product
Where GOSTID=GOST and GOSTID=@GOST
If @@ROWCOUNT=0
Print 'ГОСТ введен не верно. Проверьте данные.'

--ВЫВЕСТИ УКАЗАННОГО ЗАКАЗЧИКА И ЕГО СУММУ ЗАКАЗА
Declare @PassportData varchar(20) = '4220 621532'
Select NameCustomer, FamilyCustomer, PatronimycCustomer, NameProduct, Amount, Amount*Price as Result from Customer, [Order], Product
Where Customer=CustomerID and Product=ProductID and PassportData=@PassportData
If @@ROWCOUNT=0
Print 'Заказчик введен не верно. Перепроверьте данные.'

--ВЫВЕСТИ ВСЕ ЗАКАЗЫ НА УКАЗАННЫЙ АДРЕС
Declare @Address varchar(100) = 'ул.Краноармейская-2, дом 2'
Select  Phone, [Address], Amount, NameProduct from Customer, [Order], Product
Where CustomerID=Customer and ProductID=Product and [Address]=@Address
If @@ROWCOUNT = 0
Print 'Адрес введен не верно. Проверьте данные.'

--ВЫВЕСТИ ЗАКАЗЧИКА И ЕГО АДРЕС
Declare @Adres varchar(100) = 'ул.Краноармейская-2, дом 2'
Declare @PassData varchar(50) = '5240 520320'
Select FamilyCustomer, NameCustomer, PatronimycCustomer, [Address] from [Order], Customer
Where PassportData=@PassData and [Address]=@Adres
If @@ROWCOUNT=0
Print 'Ошибка. Данные введены не верно.'

--ВЫВЕДИТЕ ЦЕНУ ТОВАРА И ГОСТ ПО НАЗВАНИЮ
Declare @ProductN varchar(100)='Лавочка'
Select NameProduct, DescriptionGOST, Price from Product, GOST
Where NameProduct=@ProductN and GOSTID=GOST
If @@ROWCOUNT=0
Print 'Ошибка. Данные введены'