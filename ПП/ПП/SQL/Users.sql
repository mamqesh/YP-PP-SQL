Use Equipment
Go


Create login Directorr with password = 'Director123'
Create user DirectorrUser for login Directorr -- �������� ���������, ����� ������ �������������

Create login CustomerAdd with password = 'CustomerAdd123'
Create user CustomerAddUser for login CustomerAdd --�������� ������� ��� ������ ������, ����� ��������� ����� ����������

Create login OrderAdd with password = 'OrderAdd123'
Create user OrderUser for login OrderAdd -- �������� ������� ��� ���������� �������

Create login Admm with password = 'Admm123' -- �����
Create user AdmmUser for login Admm

Grant select on Customer to DirectorrUser --�������� ��� ���������
Grant select on GOST to DirectorrUser
Grant select on [Order] to DirectorrUser
Grant select on Product to DirectorrUser
Grant delete on Product to DirectorrUser
Grant update on Customer to CustomerAddUser --���������� � ��������� ����������
Grant insert on Customer to CustomerAddUser
Grant select on Customer to CustomerAddUser
Grant delete on Customer to CustomerAddUser
Grant update on [Order] to OrderUser -- ������� ��� ���������� �������
Grant insert on [Order] to OrderUser
Grant select on [Order] to OrderUser
Grant select on Customer to AdmmUser -- ������� ������
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