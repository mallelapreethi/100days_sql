use _100days_sql;
CREATE TABLE if not exists Employees(
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (EmployeeID, Name, Department, Salary) VALUES
(1, 'Alice', 'HR', 50000.00),
(2, 'Bob', 'IT', 60000.00),
(3, 'Charlie', 'Finance', 55000.00),
(4, 'David', 'HR', 52000.00),
(5, 'Emma', 'IT', 62000.00),
(6, 'Frank', 'Finance', 58000.00),
(7, 'Gina', 'IT', 65000.00),
(8, 'Harry', 'HR', 53000.00);


SELECT EmployeeID, Name, Department, Salary FROM
	(SELECT *, RANK() OVER(PARTITION BY Department ORDER BY Salary DESC) rn FROM Employees) e
WHERE rn = 1;


select *, max(salary) from Employees group by Department; 






