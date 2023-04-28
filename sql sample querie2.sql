create database HeroVired;

create TABLE RGM(
Id int primary key not null,
Name varchar(30) not null,
College varchar(30) not null,
Session varchar(25) not null,
Number int not null,
address varchar(30) not null
); 

select * from RGM;
INSERT INTO RGM VALUES (200,"Dileep","rgm","java",2344,"Nandyal");
INSERT INTO RGM VALUES 
(199,"Dileep","rgm","java",2344,"Nandyal"),
(201,"kumar","pullareddy","python",23344,"pdtr"),
(202,"Shanthan","jntu","html",23434,"kadapa"),
(203,"Suresh","CBIT","CSS",234674,"Kurnool");
