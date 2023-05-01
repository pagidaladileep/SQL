create table student(
St_Id int primary key not null,
St_Name varchar(39) not null,
St_Marks int not null);
select * from student;

INSERT INTO student VALUES 
(301,"james",56),
(302,"Sohail",67),
(303,"Sahil",98),
(304,"Illiyas",90),
(305,"vignesh",97),
(306,"Manoj",86),
(307,"Veera",91),
(308,"Dileep",99);

-- +,-,>,<,<=,>=,!=
select * from student where St_Marks=67;

select * from student where St_Marks >67;
select * from student where St_Marks<=67;

select * from student where St_Marks>=97;

select * from student where St_Marks!=97;
select * from student where St_Marks<> 97;
select * from student where St_Marks<> 90;

select * from student where St_Marks between  56 and 98;
-- order by
-- Ascending order   asc
select * from student where St_Marks between  56 and 98 order by St_Marks; -- by default we get ascending order
select * from student where St_Marks between  56 and 98 order by St_Marks asc;
-- DEscending order desc
select * from student where St_Marks between  56 and 98 order by St_Marks desc;
-- where not clause

select * from student where not St_Marks=91;

select * from rgm;

select distinct address from rgm;
-- count

select count(distinct address) from rgm;
select count(distinct Name) from rgm;
select count(distinct St_Marks) from student;

select * from student;

select * from student where not St_Marks =90 and not St_Marks=97;
-- limit
select * from rgm limit 3;

select * from rgm where address ="nandyal" limit 2;
select * from rgm where College ="rgm" limit 2;
select * from rgm where address ="nandyal" limit 4;

select * from rgm order by address="nandyal" limit 2;  

select count(address),address from rgm group by address;

select * from rgm; 

select * from rgm where College="rgm" order by Id limit 2;

select * from rgm where College="rgm" order by Id desc limit 2;

create table dob(
DATE_ DATE not null 
);
select * from dob;
-- date YYYY-MM-DD
insert into dob values ('2020-07-31');
