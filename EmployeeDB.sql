-- UC 1---
create database payroll_service;
use payroll_service;

show databases;
----- UC2 -----
create table employee_payroll (
id int not null auto_increment,
name varchar(50) not null,
salary Double not null,
startDate Date not null,
primary key(id)
);

desc employee_payroll;

----- UC3 -----
insert into employee_payroll (name, salary, startDate)
values 
      ('Prashant', 150000.0, '2022-04-10'),
      ('Suraj', 78000.0, '2023-09-10'),
      ('Akshay', 800000.0, '2021-02-10'),
      ('Raju', 2500000.0, '2020-05-10');
      
insert into employee_payroll (name, salary, startDate)
values 
      ('Simran', 950000.0, '2021-02-10'),
      ('Swati', 800000.0, '2021-02-10');
----- UC4 -----
select * from employee_payroll;

----- UC5 -----
select * from employee_payroll where name = 'Prashant';
select salary from employee_payroll where name = 'Prashant';

select * from employee_payroll where startDate between '2020-04-10' and Date(now());

select * from employee_payroll where startDate between cast('2020-04-10' as date) and Date(now());

----- UC6 -----

alter table employee_payroll add gender char(1);

update employee_payroll set gender  = 'M' where id;

update employee_payroll set gender = 'F' where id=5;
update employee_payroll set gender = 'F' where id=6;

----- UC7 -----
select sum(salary) from employee_payroll;

select gender, sum(salary) from employee_payroll group by gender;
