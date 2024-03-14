create database if not exists _100days_sql;
use _100days_sql;
create table if not exists TRIANGLES(A int, B int, C int);
insert into TRIANGLES(A, B, C) values(20, 20, 23), (20, 20, 20), (20, 21, 22), (13, 14, 30);

select 
	(CASE
		when A+B <= C or B+C <= A or A+C <= B then 'Not A Triangle' 
        when A = B and B = C then 'Equilateral'
        when A = B or B = C or A = C then 'Isosceles'
        else 'Scalene'
	END)  as type from TRIANGLES;
    
    