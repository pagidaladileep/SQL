-- to see all data bases
show databases;
select * from rgm;
insert into rgm values
(2001,"Shanthan","rgm","java",25373,"Kurnool"),
(2002,"Vignesh","Pullareddy","COA",44544,"Kurnool"),
(2003,"James","CBIT","os",25373,"hyderbad"),
(2004,"Kumar","SRIT","sql",2334323,"NAndyal"),
(2005,"Vinay","JSRM","Python",223443,"KADAPA"),
(2006,"Dileep","JNTU","CSS",2344333,"PDTR"),
(2007,"Suresh","VIT","JS",45444,"NELLOre"),
(2008,"Sudharshan","LPU","HTML",234444,"Ongole");
-- update
update rgm set name="vamsi" where Number=25373;
-- update for data in table and alter is used for tables.
update rgm  set Session = "PHP" , address="Kurnool" where Number=44544;
drop table test; -- it is used to delete table
select * from student;
create table test
(student_id int primary key not null,
student_name varchar(30) not null,
student_contact int not null,
student_dept varchar(20) not null);

select * from test;

insert into test select * from rgm_student;
-- if we want to use the command  we must have both tables in same data base.
 -- truncate is used to delete table data not table structure
 truncate table test;

select * from student;
-- delete is used to remove entire row
delete from student where student_name ="suresh";

drop table test;
-- Alter Commands
-- to change column name

alter table student rename column student_name to Name;

alter table student rename to rgm_student;

select * from student;-- here we get error
select * from rgm_student;

create database dileep;
-- drop database
drop database dileep;
-- to add column

 alter table rgm_student add address varchar(40);

-- here column added nwely and does not have data we use update
-- to insert data

update rgm_student set address ="hyderbad" where student_id =502; 
update rgm_student set address ="kurnool" where student_id =501;
update rgm_student set address ="pdtr" where student_id =503;
update rgm_student set address ="kadapa" where student_id =504;
update rgm_student set address ="nellore" where student_id =505;
update rgm_student set address ="vizag" where student_id =506;
-- here we are modifying the varchar size(40---34)
alter table rgm_student modify column address varchar(34);
-- for dropping particular column only one column deleted at once

alter table rgm_student drop column address;
-- delete command delete all the data structure remains same..
delete from test;
create table dileep(marks int primary key not null);
insert into dileep values(30),(49),(29),(12),(45),(99),(14),(1);
select * from dileep;

-- min,max,avg,sum,count
select min(marks) from dileep;

select max(marks) from dileep;

select avg(marks) from dileep;

select sum(marks) from dileep;
-- to change the output column name
select sum(marks) as total from dileep;

select count(marks) as total_count from dileep;

