--Создать таблицу employees
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

--Наполнить таблицу employee 70 строками
insert into employees(employee_name)
	values('Angela Ward'),
		('Edward Brooks'),
		('Bruce Jordan'),
		('Roger Morgan'),
		('Alice Fleming'),
		('Janet Smith'),
		('Kimberly Dixon'),
		('Jason Hubbard'),
		('Albert Brown'),
		('Katherine Scott'),
		('Louis Diaz'),
		('Justin Bowen'),
		('Ralph Brown'),
		('John Baldwin'),
		('Robert Johnson'),
		('Angela James'),
		('Thomas Maldonado'),
		('Anna Rice'),
		('Tammy Williams'),
		('Georgia Martinez'),
		('Robert Green'),
		('Helen Casey'),
		('Gregory Cook'),
		('William Walker'),
		('Marie Phillips'),
		('Alma Taylor'),
		('Roland Davis'),
		('Margaret Moore'),
		('Herbert Baker'),
		('Warren Adkins'),
		('Troy Kelly'),
		('Darrell Richardson'),
		('John Lewis'),
		('Stella Simmons'),
		('Constance Kennedy'),
		('James Ross'),
		('James Caldwell'),
		('Rita Roberts'),
		('Jesse Martin'),
		('Harry Ortiz'),
		('Miguel Oliver'),
		('Arthur Davis'),
		('Gloria Taylor'),
		('Terry Martin'),
		('Theresa White'),
		('Dorothy Todd'),
		('William Phillips'),
		('Doris Ross'),
		('Craig Patton'),
		('Lucy Alexander'),
		('Andrea Martin'),
		('Jason White'),
		('George Daniels'),
		('James Todd'),
		('Irene Johnson'),
		('Martin Hines'),
		('Joshua Payne'),
		('Jean Bennett'),
		('Larry McKinney'),
		('Sue Cunningham'),
		('Juan Henderson'),
		('William Green'),
		('Timothy Coleman'),
		('Mike Howard'),
		('Tracy Taylor'),
		('Mary Wilson'),
		('Alexander Carter'),
		('John Frazier'),
		('Dennis Ford'),
		('Lynn Scott');
		
select * from employees;

--Создать таблицу salary
create table salary(
	id serial primary key,
	mounthly_salary int not null
);


--Наполнить таблицу salary 15 строками:
insert into salary(mounthly_salary)
values (1000),
	(1100),
	(1200),
	(1300),
	(1400),
	(1500),
	(1600),
	(1700),
	(1800),
	(1900),
	(2000),
	(2100),
	(2200),
	(2300),
	(2400),
	(2500);

select * from salary;

--Создать таблицу employee_salary
create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
);

--Наполнить таблицу employee_salary 10 строками:
-- в 10 строк из 40 вставить несуществующий employee_id
insert into employee_salary(employee_id, salary_id)
values  (3, 7),
	(5, 9),
	(40, 13),
	(23, 4),
	(11, 2),
	(52, 10),
	(15, 13),
	(26, 4),
	(16, 1),
	(33, 7),
	(2, 1),
	(63, 2),
	(4, 11),
	(21, 1),
	(6, 4),
	(7, 7),
	(1, 4),
	(8, 5),
	(9, 8),
	(10, 2),
	(20, 13),
	(12, 5),
	(13, 4),
	(14, 12),
	(17, 12),
	(18, 1),
	(19, 15),
	(45, 4),
	(44, 16),
	(43, 12),
	(42, 1),
	(80, 13),
	(79, 6),
	(78, 10),
	(77, 9),
	(76, 11),
	(75, 6),
	(74, 4),
	(73, 6),
	(72, 3),
	(71, 5);	
	

select * from employee_salary;

--Создать таблицу roles
create table roles(
	id serial primary key,
	role_name int unique not null
);

--Поменять тип столбца role_name с int на varchar(30)
alter table roles 
alter column role_name type varchar(30) using role_name::varchar(30);

--Наполнить таблицу roles 20 строками:
insert into roles(role_name)
	values('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
		
select * from roles;

--Создать таблицу roles_employee
create table roles_employee(
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id) 
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

--Наполнить таблицу roles_employee 40 строками:
insert into roles_employee(employee_id, role_id)
values (35, 2),
 		(8, 12),
 		(48, 3),
 		(7, 1),
 		(39, 4),
 		(69, 11),
 		(40, 6),
 		(1, 5),
 		(42, 2),
 		(68, 1),
 		(27, 10),
 		(54, 19),
 		(31, 13),
 		(43, 5),
 		(3, 7),
 		(23, 17),
 		(5, 4),
 		(4, 1),
 		(70, 16),
 		(64, 4),
 		(22, 14),
 		(57, 4),
 		(32, 3),
 		(12, 3),
 		(6, 1),
 		(10, 2),
 		(18, 8),
 		(33, 15),
 		(19, 18),
 		(14, 15),
 		(20, 6),
 		(50, 17),
 		(21, 15),
 		(17, 20),
 		(49, 20),
 		(62, 3),
 		(13, 13),
 		(61, 9),
 		(55, 20),
 		(45, 8);
 		
select * from roles_employee;
 
