--SQL SCHEMA
CREATE TABLE If NOT EXISTS Employee (id int, salary int);
TRUNCATE TABLE Employee;
INSERT INTO Employee (id, salary) VALUES ('1', '100');
INSERT INTO Employee (id, salary) VALUES ('2', '200');
INSERT INTO Employee (id, salary) VALUES ('3', '300');

--SOLUTION
SELECT MAX(salary) AS SecondHighestSalary 
FROM Employee 
WHERE salary < (SELECT MAX(salary) 
                FROM Employee);