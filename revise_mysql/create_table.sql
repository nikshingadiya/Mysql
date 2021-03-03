-- create database testdb;
USE testdb;

create table person
(
  person_id int Not Null,
  fname varchar(255),
  lname varchar(255),
  city varchar(255),
  age int CHECK (Age>=18),
  primary key(person_id)
  );
  insert into person(person_id,fname,lname,city,age)
  values
  (1,"nik","shingadiay","rajkot",23),
  (2,"hell","rob","Los",18),
  (3,"tio","Lee","Philp",25);

  
  
  alter Table person
  Add email varchar(255);
  