create  table employees(
id serial primary key,
employee_name varchar(50) not null)

insert into employees(employee_name) 
values ('Арсений'),
	   ('Михаил'),
	   ('Станислав'),
	   ('Георгий'),
	   ('Николай'),
	   ('Александр'),
	   ('Дмитрий'),
	   ('Тимофей'),
	   ('Александр'),
	   ('Тимур'),
	   ('Максим'),
	   ('Егор'),
	   ('Кирилл'),
	   ('Лев'),
	   ('Илья'),
	   ('Владислав'),
	   ('Адам'),
	   ('Павел'),
	   ('Михаил'),
	   ('Фёдор'),
	   ('Дмитрий'),
	   ('Глеб'),
	   ('Матвей'),
	   ('Анастасия'),
	   ('Юлия'),
	   ('Константин'),
	   ('Эрик'),
	   ('Полина'),
	   ('Елисей'),
	   ('Фёдор'),
	   ('Василиса'),
	   ('Владислав'),
	   ('Иван'),
	   ('Ярослав'),
	   ('Варвара'),
	   ('Ника'),
	   ('Мира'),
	   ('Кристина'),
	   ('Арина'),
	   ('Вероника'),
	   ('Савелий'),
	   ('Злата'),
	   ('Евгения'),
	   ('Мирослава'),
	   ('Пётр'),
	   ('Виктория'),
	   ('Дамир'),
	   ('Олег'),
	   ('Алиса'),
	   ('Матвей'),
	   ('Роман'),
	   ('Елизавета'),
	   ('Ольга'),
	   ('Григорий'),
	   ('Алексей'),
	   ('Милана'),
	   ('Станислав'),
	   ('Анна'),
	   ('Олеся'),
	   ('Алина'),
	   ('Марк'),
	   ('Ян'),
	   ('Владислава'),
	   ('Денис'),
	   ('Ксения'),
	   ('Алёна'),
	   ('Давид'),
	   ('Демид'),
	   ('Альберт'),
	   ('Даниил');
	  
create table salary(
id serial primary key,
monthly_salary int not null);

insert into salary (monthly_salary)
values  (1000),
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
		(2500)


create table employee_salary(
id serial primary key,
employee_id int unique not null,
salary_id int not null);


insert into employee_salary(employee_id, salary_id)
values  (1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 5),
		(6, 6),
		(7, 7),
		(8, 8),
		(9, 9),
		(10, 10),
		(11, 11),
		(12, 12),
		(13, 13),
		(14, 14),
		(15, 15),
		(16, 15),
		(17, 14),
		(18, 13),
		(19, 12),
		(20, 11),
		(21, 10),
		(22, 9),
		(23, 8),
		(24, 7),
		(25, 6),
		(26, 5),
		(27, 4),
		(28, 3),
		(29, 2),
		(30, 1),
		(80, 1),
		(79, 2),
		(78, 3),
		(77, 4),
		(76, 5),
		(75, 6),
		(74, 7),
		(73, 8),
		(72, 9),
		(71, 15);



create table roles(
	id serial primary key,
	role_name int not null unique
);


alter table roles alter column role_name type varchar(30);


insert into roles(role_name)
values
		('Junior Python developer'),
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


create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);


insert into roles_employee(employee_id, role_id)
values
		(1,1),
		(2,2),
		(3,3),
		(4,4),
		(5,5),
		(6,6),
		(7,7),
		(8,8),
		(9,9),
		(10,10),
		(11,11),
		(12,12),
		(13,13),
		(14,14),
		(15,15),
		(16,16),
		(17,17),
		(18,18),
		(19,19),
		(20,20),
		(21,1),
		(22,2),
		(23,3),
		(24,4),
		(25,5),
		(26,6),
		(27,7),
		(28,8),
		(29,9),
		(30,10),
		(31,11),
		(32,12),
		(33,13),
		(34,14),
		(35,15),
		(36,16),
		(37,17),
		(38,18),
		(39,19),
		(40,20);
	   

select * from roles_employee;