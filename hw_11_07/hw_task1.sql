/*
Создать базу данных homeworks

В этой базе создать таблицу employees с полями:
• id – integer - уникальное значение, не пустое, с автозаполнением 
• firstname - varchar(128) - не пустое
• lastname - varchar(128) - не пустое
• job - varchar(64)
• age - integer - от 20 до 100(вкл.)
• hascar – char только один символ, по умолчанию 'N' 
• username - varchar(128) - уникальное значение, не пустое

Добавить 5 строк.

Удалить таблицу employees 

Удалить бд homeworks
*/

create database homeworks;
use homeworks;
create table employees (
	id int primary key auto_increment,
    firstname varchar(128) not null,
    lastname varchar(128) not null,
    job varchar(128),
    age int check(age >= 20 and age <= 100),
    hascar char(1) default 'N',
    username varchar(128) unique not null
);

insert into employees (firstname, lastname, job, age, hascar, username)
values 
	('Alex', 'Axelson', 'teacher', 21, 'Y', 'axel20'),
	('Thomas', 'Mueller', 'pilot', 37, 'Y', 'TH_M'),
	('Florian', 'Wirtz', 'driver', 27, 'Y', 'FloWi'),
	('Julian', 'Brandt', 'ingeneur', 33, 'N', 'Brandt33'),
	('Herry', 'Kane', 'worker', 30, 'Y', 'd_Herry');

drop table employees;
drop database homeworks;
    