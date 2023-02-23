create database address_books;
use address_books;

create table contacts (
id int not null auto_increment,
firstname varchar (50) not null,
lastname varchar (50) not null,
address char(25) not null,
city char(25) not null,
state char(25) not null,
zip int not null,
phonenumber int not null,
email varchar(50) not null,
primary key(id)
); 
desc contacts;

alter table contacts modify phonenumber bigint;

insert into contacts(firstname, lastname, address, city, state, zip, phonenumber, email)
values("Prashant" , "Deepake" , "Rajcorner" ,"Nanded" , "Maharashtra", 431605, 9130590029, "deepake@gmail.com");

insert into contacts(firstname, lastname, address, city, state, zip, phonenumber, email)
values
("Raju" , "Deepake" , "Rajcorner" ,"Nanded" , "Maharashtra" , 431605 ,9890888825, "deepake@gmail.com"),
("Akshay" , "Atkore" , "Virar" ,"Mumbai" , "Maharashtra" , 11111 ,9595373199, "raju07@gmail.com"),
("Suraj" , "Rampt" , "sodagur" ,"Pune" , "Maharashtra" , 12345 ,7887777493, "surajR01@gmail.com"),
("Akshay" , "Patil" , "Hadapsar" ,"Pune" , "Maharashtra" , 400012 ,8390097590, "akpatil@gmail.com")
;

select * from contacts;

update contacts set zip = 411031 where (firstname = "Akshay");
update contacts set zip = 411031 where (firstname = "Akshay" and id <>0);

update contacts set zip = 411031 where (firstname = "Akshay" and lastname = "patil" and id <>0);
update contacts set zip = 411011 where (firstname = "Suraj" and lastname = "Rampt" and id <>0);

delete from contacts where (firstname = "Akshay" and id<>0);

insert into contacts(firstname, lastname, address, city, state, zip, phonenumber, email)
values ("Akshay" , "Atkore" , "Virar" ,"Mumbai" , "Maharashtra" , 11111 ,9595373199, "raju07@gmail.com");

select * from contacts where city = "Nanded";
select * from contacts where city = "Pune";

select count(*) from contacts where city = "Nanded";
select count(*) from contacts where city = "Nanded" or state = "Maharashtra";

select city, count(*) from contacts group by city;
select state, count(*) from contacts group by state;

select * from contacts order by(firstname);
select * from contacts where city = "Nanded" order by(firstname); 

alter table contacts add type varchar(50);

update contacts set type = "Friend" where id<>0;
update contacts set type ="Brother" where (id>0 and id<3);

select type , count(*) from contacts; 