create database if not exists _100days_sql;
use  _100days_sql;

create table if not exists OCCUPATIONS(Name varchar(50), Occupation varchar(20));

insert into OCCUPATIONS(Name, Occupation) values("Samantha", "Doctor"), ("Julia", "Actor"), ("Maria", "Actor"), 
("Meeera", "Singer"),("Ashley", "Professor"), ("Ketty", "Professor"), ("Christeen", "Professor"), 
("Jane", "Actor"), ("Jane", "Actor"), ("Jenny", "Doctor"), ("Priya", "Singer");

select concat(Name, "(", Upper(left(Occupation, 1)), ")") as output from OCCUPATIONS order by Name;
select concat("There are a total of ", count(Occupation), " ", lower(Occupation), "s.") as output from OCCUPATIONS 
group by Occupation order by count(Occupation), Occupation;