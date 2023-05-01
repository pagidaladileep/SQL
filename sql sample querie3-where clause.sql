-- find all rows where R session is equal to java
SELECT * FROM rgm WHERE Session="java";

select Id,Name,Session from rgm where Session="java";

select * from rgm ;

select * from rgm where Session="java" and address="Nandyal";

select * from rgm where address="pdtr";
-- Like
-- first letters searching in the data base

select * from rgm where Name like "su%";
select * from rgm where Name like "d%";
select * from rgm where Name like "s%";

-- last letters searching in the data base
select * from rgm where Name like "%p";
select * from rgm where Name like "%sh";

-- middle characters here _ counts single character
select * from rgm where Name like "_i%";
select * from rgm where Name like "__r%";
-- Not Like
select * from rgm where Name not like "s%";
select * from rgm where Name not like "%p";
select * from rgm where Name not like "_h%";

-- using in clause
select * from rgm where address in ('Hyderbad','kurnool');
select * from rgm where college in ('rgm','cbit');

select * from rgm where college = 'rgm' or college= 'cbit';


 





