create table car(
car_no int primary key,car_name varchar(30) ,car_price int,car_quantity int);
insert into car values(1121,"Audi",12000000,3),
(1223,"LAMBORGI",34400000,5),
(1131,"TATA",12000000,9),
(1334,"XUV",134320000,2),
(1455,"NEXAS",124543000,6),
(1123,"TESLA",1205430,4),
(1834,"FORD",134320000,1),
(1456,"BMW",12000232,5);
select * from car;
select count(car_name),car_price from car group by car_price;
select count(car_name) as count_number,car_price from car group by car_price;
-- having clause
select * from car;
select car_price from car group by car_price having car_price >12000000;
select count(car_name) from car group by car_price having car_price > 12000000;


create table visit(
entry_date date,price int, duration int );
select * from visit;
insert into visit values("2023-5-1",1000,20), 
("2023-5-1",1234,24),
("2023-5-1",1034,41),
("2023-3-23",2300,16),
("2023-5-30",1320,40);

select entry_date ,count(*) from visit group by entry_date;
-- Extract keyword examples
 select extract(year from entry_date) as year,
 extract(month from entry_date)as month,
 round(avg(price),3) -- round upto 2 decimal values..
 from visit group by
extract(year from entry_date),
extract(month from entry_date);  

select extract(year from entry_date) as year,
 extract(month from entry_date)as month,
 extract(day from entry_date) as day,
 round(avg(price),4) -- round upto 2 decimal values..
 from visit group by
extract(year from entry_date),
extract(month from entry_date),
extract(day from entry_date)
order by extract(year from entry_date),
extract(month from entry_date), 
extract(year from entry_date),
extract(month from entry_date),
extract(day from entry_date);
select * from visit;
select entry_date, round(avg(price),3) as avg_price from visit 
group by entry_date having count(*) >0 order by entry_date;

select entry_date, round(avg(price),3) as avg_price from visit 
group by entry_date having count(*) >3 order by entry_date;

select entry_date, round(avg(price),3) as avg_price from visit 
where duration >20 group by entry_date having count(*) >1 order by entry_date;










