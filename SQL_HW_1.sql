--1. ������� ��� ���� � ��� ������.
SELECT * FROM students;

--2. ������� ���� ��������� � �������
SELECT id, name, email, password, created_on
from students;

--3. ������� ������ Id �������������
SELECT id
from students;

--4. ������� ������ ��� �������������
SELECT name
from students;

--5. ������� ������ email �������������
SELECT email
FROM students;

--6. ������� ��� � email �������������
SELECT name, email
from students;

--7. ������� id, ���, email � ���� �������� �������������
SELECT id, name, email, created_on
from students;

--8. ������� ������������� ��� password 12333
SELECT * FROM students
WHERE password='12333';

--9. ������� ������������� ������� ���� ������� 2021-03-26 00:00:00
SELECT * FROM students
WHERE created_on ='2021-03-26 00:00:00';

--10. ������� ������������� ��� � ����� ���� ����� ����
SELECT * FROM students
WHERE name Like 'Anna%';

--11. ������� ������������� ��� � ����� � ����� ���� 8
SELECT * FROM students
WHERE name Like '%8';

--12. ������� ������������� ��� � ����� � ���� ����� �
SELECT * FROM students
WHERE name Like '%a%';

--13. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00
SELECT * FROM students
WHERE created_on ='2021-07-12 00:00:00';

--14. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � ����� ������ 1m313
SELECT * FROM students
WHERE created_on ='2021-07-12 00:00:00' AND password= '1m313';

--15. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� Andrey
SELECT * FROM students
WHERE created_on ='2021-07-12 00:00:00' AND name like '%Andrey%';

--16.	������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� 8
SELECT * FROM students
WHERE created_on ='2021-07-12 00:00:00' AND name like '%8%';

--17.	������� ������������ � ������� id ����� 110
Select * FROM students
Where id=110;

--18.	������� ������������ � ������� id ����� 153
Select * FROM students
Where id=153;

--19. ������� ������������ � ������� id ������ 140
SELECT * FROM students
where id >140;

--20. ������� ������������ � ������� id ������ 130
SELECT * FROM students
where id <130;

--21. ������� ������������ � ������� id ������ 127 ��� ������ 188
SELECT * FROM students
where id <127 or id >180;

--22. ������� ������������ � ������� id ������ ���� ����� 137
SELECT * FROM students
where id <=137;

--23. ������� ������������ � ������� id ������ ���� ����� 137
SELECT * FROM students
where id >=137

--24. ������� ������������ � ������� id ������ 180 �� ������ 190
SELECT * FROM students
where id  >180 or id <190;

-- 25. ������� ������������ � ������� id ����� 180 � 190
SELECT * FROM students
where id between 180 and 190;

-- 26. ������� ������������� ��� password ����� 12333, 1m313, 123313
SELECT * FROM students
where password in ('12333', '1m313', '123313');

--27. ������� ������������� ��� created_on ����� 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
SELECT * FROM students
where created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:0');

--28. ������� ����������� id
SELECT min(id)
FROM students;

--29. ������� ������������.
SELECT max(id)
FROM students;

--30. ������� ���������� �������������
SELECT count(id)
from students;

--31. ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� ����������� ���� ���������� �������������.
SELECT id, name, email, created_on
from students
order by created_on;

--32. ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� �������� ���� ���������� �������������.
SELECT id, name, email, created_on
from students
order by created_on desc;