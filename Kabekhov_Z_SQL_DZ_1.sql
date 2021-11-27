--Вывести все поля и все строки.
select * from students;

--Вывести всех студентов в таблице.
select * from students;

--Вывести только Id пользователей.
select id from students;

--Вывести только имя пользователей.
select name from students;

--Вывести только email пользователей.
select email from students;

--Вывести имя и email пользователей.

select name, email from students;

--Вывести id, имя, email и дату создания пользователей
select id, name, email, created_on from students;

--Вывести пользователей где password 12333
SELECT * FROM students
WHERE "password" ='12333';

--Вывести пользователей которые были созданы 2021-03-26 00:00:00
SELECT * FROM students
WHERE "created_on" ='2021-03-26 00:00:00';

--Вывести пользователей где в имени есть слово Анна
SELECT * FROM students
WHERE "name" ='Анна';

--Вывести пользователей где в имени в конце есть 8
SELECT * FROM students
WHERE name LIKE '%8';

--Вывести пользователей где в имени в есть буква а
SELECT * FROM students
WHERE name LIKE '%a%';

--Вывести пользователей которые были созданы 2021-07-12 00:00:00
SELECT * FROM students
WHERE "created_on" ='2021-07-12 00:00:00';

--Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
SELECT * FROM students
WHERE "created_on" ='2021-07-12 00:00:00' and "password" = '1m313';

--Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
SELECT * FROM students
WHERE "created_on" ='2021-07-12 00:00:00' and name like '%Andrey%';

--Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
SELECT * FROM students
WHERE "created_on" ='2021-07-12 00:00:00' and name like '%8%';
--Вывести пользователя у которых id равен 10
SELECT * FROM students
WHERE "id" = '10';

--Вывести пользователя у которых id равен 53
SELECT * FROM students
WHERE "id" = '53';

--Вывести пользователя у которых id больше 40
SELECT * FROM students
where id > 40;

--Вывести пользователя у которых id меньше 30
SELECT * FROM students
where id < 30;

--Вывести пользователя у которых id меньше 27 или больше 88
SELECT * FROM students
where id < 27 or id > 88;

--Вывести пользователя у которых id меньше либо равно 37
SELECT * FROM students
where id < 37 or id = 37;
--Вывести пользователя у которых id больше либо равно 37
SELECT * FROM students
where id > 37 or id = 37;

-- Вывести пользователя у которых id больше 80 но меньше 90
SELECT * FROM students
where id > 80 and id < 90;

--Вывести пользователя у которых id между 80 и 90
SELECT * FROM students
WHERE id BETWEEN 80 AND 90;

--Вывести пользователей где password равен 12333, 1m313, 123313
SELECT * FROM students
WHERE "password" = '12333' or "password" = '1m313' or "password" = '123313';

--Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
SELECT * FROM students
WHERE "created_on" = '2020-10-03 00:00:00' or "created_on" = '2021-05-19 00:00:00' or "created_on" = '2021-03-26 00:00:00';

--Вывести минимальный id
select MIN(id)
FROM students;

--Вывести максимальный.
select MAX(id)
FROM students;

--Вывести количество пользователей
SELECT COUNT (user)
FROM students;

--Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
select id, name, created_on from students ORDER BY created_on ASC;

--Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.
select id, name, created_on from students ORDER BY created_on DESC;