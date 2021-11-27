--������� ��� ���� � ��� ������.
select * from students;

--������� ���� ��������� � �������.
select * from students;

--������� ������ Id �������������.
select id from students;

--������� ������ ��� �������������.
select name from students;

--������� ������ email �������������.
select email from students;

--������� ��� � email �������������.

select name, email from students;

--������� id, ���, email � ���� �������� �������������
select id, name, email, created_on from students;

--������� ������������� ��� password 12333
SELECT * FROM students
WHERE "password" ='12333';

--������� ������������� ������� ���� ������� 2021-03-26 00:00:00
SELECT * FROM students
WHERE "created_on" ='2021-03-26 00:00:00';

--������� ������������� ��� � ����� ���� ����� ����
SELECT * FROM students
WHERE "name" ='����';

--������� ������������� ��� � ����� � ����� ���� 8
SELECT * FROM students
WHERE name LIKE '%8';

--������� ������������� ��� � ����� � ���� ����� �
SELECT * FROM students
WHERE name LIKE '%a%';

--������� ������������� ������� ���� ������� 2021-07-12 00:00:00
SELECT * FROM students
WHERE "created_on" ='2021-07-12 00:00:00';

--������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � ����� ������ 1m313
SELECT * FROM students
WHERE "created_on" ='2021-07-12 00:00:00' and "password" = '1m313';

--������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� Andrey
SELECT * FROM students
WHERE "created_on" ='2021-07-12 00:00:00' and name like '%Andrey%';

--������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� 8
SELECT * FROM students
WHERE "created_on" ='2021-07-12 00:00:00' and name like '%8%';
--������� ������������ � ������� id ����� 10
SELECT * FROM students
WHERE "id" = '10';

--������� ������������ � ������� id ����� 53
SELECT * FROM students
WHERE "id" = '53';

--������� ������������ � ������� id ������ 40
SELECT * FROM students
where id > 40;

--������� ������������ � ������� id ������ 30
SELECT * FROM students
where id < 30;

--������� ������������ � ������� id ������ 27 ��� ������ 88
SELECT * FROM students
where id < 27 or id > 88;

--������� ������������ � ������� id ������ ���� ����� 37
SELECT * FROM students
where id < 37 or id = 37;
--������� ������������ � ������� id ������ ���� ����� 37
SELECT * FROM students
where id > 37 or id = 37;

-- ������� ������������ � ������� id ������ 80 �� ������ 90
SELECT * FROM students
where id > 80 and id < 90;

--������� ������������ � ������� id ����� 80 � 90
SELECT * FROM students
WHERE id BETWEEN 80 AND 90;

--������� ������������� ��� password ����� 12333, 1m313, 123313
SELECT * FROM students
WHERE "password" = '12333' or "password" = '1m313' or "password" = '123313';

--������� ������������� ��� created_on ����� 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
SELECT * FROM students
WHERE "created_on" = '2020-10-03 00:00:00' or "created_on" = '2021-05-19 00:00:00' or "created_on" = '2021-03-26 00:00:00';

--������� ����������� id
select MIN(id)
FROM students;

--������� ������������.
select MAX(id)
FROM students;

--������� ���������� �������������
SELECT COUNT (user)
FROM students;

--������� id ������������, ���, ���� �������� ������������. ������������� �� ������� ����������� ���� ���������� �������������.
select id, name, created_on from students ORDER BY created_on ASC;

--������� id ������������, ���, ���� �������� ������������. ������������� �� ������� �������� ���� ���������� �������������.
select id, name, created_on from students ORDER BY created_on DESC;