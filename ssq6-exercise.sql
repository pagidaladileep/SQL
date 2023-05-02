create database exercise;
create table customer(Id int primary key,name varchar(30),city varchar(34),grade int,salesman_id int);
insert into customer values
(101,"dileep","delhi",98, 201),
(102,"Sreenu","Mumbai",96, 202),
(103,"Manoj","Kolkata",45, 203),
(104,"Siva Pratap","MP",28, 204),
(105,"Suresh","Up",70, 205),
(106,"Kiran","Bihar",78, 206),
(107,"Adithya","Jammu",66, 207),
(108,"Muzzu","Banglore",53, 208),
(109,"Kumar","Goa",68, 209),
(110,"Vamsi","Orissa",45, 210);
select * from customer; 

-- write a sql query to find out the details of the customer whose grades are above 50;
select * from customer where grade >50;

-- ascending order
select * from customer where grade >50 order by grade asc;

-- who are living in hyderbad city and grade <=50;
select * from customer where city="Kolkata" and grade<=50;

-- who are living in hyderbad city or grade >=50;
select * from customer where city="Kolkata" or grade>=50;

-- Either kerala and grades not 100

select * from customer where city="Jammu" or not grade >50;

-- to identify the customer who donot belong to the city Mumbai or grade exceeds 200

select * from customer where not city="Mumbai" or not grade >70;

create table order_s(
order_no int,purchase_amount int,order_date date,customer_id int,salesman_id int);

insert into order_s values
(2002,1000,'2023-04-30',100,200),
(2003,1340,'2023-04-14',102,202),
(2004,1344,'2023-04-03',104,203),
(2005,4000,'2023-04-21',105,204);
select * from order_s where not order_date ='2023-04-03' and salesman_id>100 or purchase_amount>1050;

create table salesman
(salesman_id int primary key,name varchar(29),commission float);
alter table salesman add column city varchar(20);
select * from salesman;
insert into salesman values (200,"Dileep",0.45,"Kurnool"),
(202,"Dileep",0.67,"Kadapa"),
(201,"Dileep",0.12,"Nandyal"),
(203,"Dileep",0.34,"pdtr"),
(204,"Dileep",0.55,"Adoni");

-- commissions are in the range 0.03 to 0.43

select * from salesman where commission between 0.03 and 0.43;
-- salesman name with letter A;
select * from salesman where name="k%";
-- create new column address insert some data in column and display all address in descending order
alter table salesman add column address varchar(59);
update salesman set address ="Pdtr"where name="Dileep"; 
select * from salesman;
select address from salesman order by address desc;
-- display all address in salesman address
select address as salesman_address from salesman order by address desc;