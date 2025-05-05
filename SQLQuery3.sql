create database pro;
use pro;

create table student(
id int primary key,
name varchar(20),
cgpa numeric(3,2),
);

insert into student values 
(1,'maruf',3.75),
(2,'maruf',3.75),
(3,'maruf',3.75);
select distinct name as stdname from student;
select* from student;

select name from student 
where name like 'f%';
create table teacher(
T_id integer,
foreign key(T_id) references student(id), 
name varchar(20),
);


insert into teacher (T_id,name) values (1,null);
insert into teacher (T_id,name) values (2,null);
insert into teacher (T_id,name) values (1,null,12);

select *from teacher;
select distinct T_id from teacher;

alter table teacher add salary int;
create table teacher(
T_id integer,
foreign key(T_id) references student(id), 
name varchar(20),
);


insert into teacher (T_id,name) values (1,null);
insert into teacher (T_id,name) values (2,null);
insert into teacher (T_id,name) values (1,null,12);

select *from teacher;
select distinct T_id from teacher;

alter table teacher add salary int;
create table teacher(
T_id integer,
foreign key(T_id) references student(id), 
name varchar(20),
);


insert into teacher (T_id,name) values (1,null);
insert into teacher (T_id,name) values (2,null);

select *from teacher;
select distinct T_id from teacher;

alter table teacher add salary int;
insert into teacher (T_id,name,salary) values (1,null,12);
select T_id, name, salary/12 as monthly_salary from teacher;
