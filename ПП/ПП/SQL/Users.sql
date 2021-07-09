Use Equipment
Go


Create login Directorr with password = 'Director123'
Create user DirectorrUser for login Directorr -- создание директора, может только просматривать

Create login CustomerAdd with password = 'CustomerAdd123'
Create user CustomerAddUser for login CustomerAdd --создание доступа для отдела кадров, могут добавлять новых заказчиков

Create login OrderAdd with password = 'OrderAdd123'
Create user OrderUser for login OrderAdd -- создание доступа для добавления заказов

Create login Admm with password = 'Admm123' -- админ
Create user AdmmUser for login Admm

Grant select on Customer to DirectorrUser --просмотр для директора
Grant select on GOST to DirectorrUser
Grant select on [Order] to DirectorrUser
Grant select on Product to DirectorrUser
Grant delete on Product to DirectorrUser
Grant update on Customer to CustomerAddUser --добавление и изменения заказчиков
Grant insert on Customer to CustomerAddUser
Grant select on Customer to CustomerAddUser
Grant delete on Customer to CustomerAddUser
Grant update on [Order] to OrderUser -- доступы для добавления заказов
Grant insert on [Order] to OrderUser
Grant select on [Order] to OrderUser
Grant select on Customer to AdmmUser -- доступы админу
Grant select on GOST to AdmmUser
Grant select on [Order] to AdmmUser
Grant select on Product to AdmmUser
Grant update on Customer to AdmmUser 
Grant update on GOST to AdmmUser
Grant update on [Order] to AdmmUser
Grant update on Product to AdmmUser
Grant insert on Customer to AdmmUser 
Grant insert on GOST to AdmmUser
Grant insert on [Order] to AdmmUser
Grant insert on Product to AdmmUser
Grant delete on Customer to AdmmUser 
Grant delete on GOST to AdmmUser
Grant delete on [Order] to AdmmUser
Grant delete on Product to AdmmUser