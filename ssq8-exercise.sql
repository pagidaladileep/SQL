select * from exercise.customer;
select * from customer;
select city,count(*) as customer_city from customer group by city;
create table employee
(emp_id int,name varchar(30),age int,country varchar(20));
insert into employee values
(101,"Kumar",24,"US"),
(102,"Vinay",35,"South_korea"),
(103,"Sudharshan",56,"US"),
(104,"Vamsi",34,"Portugal"),
(105,"Shanthan",64,"India");
select * from employee;
select count(country),country from employee group by country having count(country)>=2;

select count(country),country as country_number from employee group by country having count(country)>=1;
select country,count(country) from employee group by
country  having max(age)>30;

select country,count(country) from employee group by
country  having max(age)>50;
select country,count(country) from employee group by
country  having max(age)>=55;
drop table manager;
create table manager(
id int,name varchar (30),gender varchar(12),age int,salary int);

insert into manager values
(101,"Dileep","M",20,6000000),
(102,"Kumar","M",20,1200000),
(103,"Deepika","F",21,340000),
(104,"Kajol","F",21,2340000),
(105,"Samantha","F",24,4300000),
(106,"Kiran","M",30,500000);
select * from manager;

select name,sum(salary) as total_salary from manager group by name
having sum(salary)>1000000 order by name;

select count(age ),age from manager group by age having count(age)>1;
select gender ,max(salary) as max_salary from manager group by
gender having max(salary)>20000;

select gender ,min(salary) as max_salary from manager group by
gender having min(salary)>20000;

DELIMITER //
create procedure GetManagerAge()
	BEGIN
		select * from manager where age=20;
	END //

call GetManagerAge();









