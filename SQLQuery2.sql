create database company_db;
use company_db;


create table employees (
    emp_id int identity(1,1) primary key,
    name varchar(100) not null,
    age int check (age >= 18),
    department varchar(50) not null,
    salary decimal(10,2) check (salary > 0),
    email varchar(100) unique
);


insert into employees (name, age, department, salary, email)  
values  
('maruf', 30, 'it', 75000.00, 'maruf@gmail.com'),  
('murad', 25, 'hr', 60000.00, 'murad@gmail.com'),  
('abir', 35, 'finance', 90000.00, 'abir@gmail.com'),  
('zeon', 28, 'marketing', 55000.00, 'zeon@gmail.com'),  
('kamal', 40, 'it', 110000.00, 'kamal@gmail.com');  

select* from employees;

select count(*) as total_employees from employees;  

select sum(salary) as total_salary from employees;  

select avg(salary) as avg_salary from employees;  

select min(salary) as min_salary from employees;  

select max(salary) as max_salary from employees;  

select * from employees order by salary desc;  

select * from employees order by name asc;  


select * from employees where name like '%r%';  

select * from employees where email like 'a%';

select * from employees where email like '%a';


