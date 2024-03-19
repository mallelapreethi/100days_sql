use _100days_sql;
create table  if not exists AnimalPopulation(Animal_ID int, Species varchar(30), Population int);
insert into AnimalPopulation(Animal_ID, Species, Population) values(1, "Lion", 10), (2, "Elephant", 5), (3, "Giraffe", 8), 
(4, "Tiger", 12), (5, "Penguin", 20), (6, "Gorilla", 7), (7, "Zebra", 15), (8, "Kangaroo", 9), (9, "Crocodile", 6), 
(10, "Polar Bear", 4), (11, "Leopard", 11), (12, "Hippopotamus", 14), (13, "Koala", 3), (14, "Rhino", 16),
(15, "Panda", 13);

SELECT Species, Population FROM 
	(SELECT *, dense_rank() OVER (ORDER BY Population DESC) rn  FROM AnimalPopulation ) as a 
WHERE rn = 4;

SELECT 
    Species, Population
FROM
    AnimalPopulation AS a
WHERE
    4 = (SELECT 
            COUNT(DISTINCT Population)
        FROM
            AnimalPopulation AS e
        WHERE
            a.Population <= e.Population);


SELECT Species, Population FROM 
	(SELECT *, dense_rank() OVER (ORDER BY Population DESC) rn  FROM AnimalPopulation ) as a 
WHERE rn = 2;

SELECT 
    Species, Population
FROM
    AnimalPopulation AS a
WHERE
    2 = (SELECT 
            COUNT(DISTINCT Population)
        FROM
            AnimalPopulation AS e
        WHERE
            a.Population <= e.Population);


            