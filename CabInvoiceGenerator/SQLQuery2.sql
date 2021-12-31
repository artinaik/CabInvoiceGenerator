create database payroll_service

show database

select name from sys.databases;

use payroll_service


create table employee_payroll
(
id int identity(1,1) primary key,
name varchar(50) not null,
salary money,
start_date date
)

drop table employee_payroll

insert into employee_payroll values
('Bili',230000.0,'2018-01-03'),
('Jack',456000.0,'2019-06-06')

set identity_insert employee_payroll on
insert into employee_payroll(id,name,salary,start_date) values
(3,'charlie',230000.0,'2018-01-03')

set identity_insert employee_payroll off


select * from employee_payroll

select * from employee_payroll where name='bili'

use payroll_service

select * from employee_payroll where start_date between '2019-01-01' and getdate()

alter table employee_payroll add gender char(1) 

select * from employee_payroll

update employee_payroll set gender='F' where id=1
update employee_payroll set gender='M' where id not in (1)

select gender,sum(salary) as totalsalary from employee_payroll group by gender
select min(salary) as minsalary from employee_payroll
select max(salary) as maxsalary from employee_payroll

alter table employee_payroll add address varchar(50) not null default 'India'
