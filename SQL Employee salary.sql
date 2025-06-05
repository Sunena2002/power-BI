create database ABCD;
use employee;
create table Edata
(
Dept_id int primary key,
Name varchar(50),
 dept varchar(50),
  salary int
);
select * from Edata;
insert into Edata(Dept_id,name,dept,salary) values
(101, "Sadiya", "HR", 85000),
(102, "Deepa", "IT",95000),
(103, "Pihu", "HR",78000),
(104, "priti", "IT",88000),
(105,  "Neha", "HR", 67000);

-- hr , it, finance Average
select dept, Avg(Salary)as average from employee group by dept;

-- total Average of hr, it and finace
select avg(Salary) as Average_salary from employee;

-- descending order
select first_name,salary from employree order by salary desc;
-- count
select dept,count(*) as total_employee from Edata group by dept;   

-- having caluse
select dept,count(*) as total_employee from employees group by dept having count(*)>2;
