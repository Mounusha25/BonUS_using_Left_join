# Write your MySQL query statement below
SELECT s.name 
FROM SalesPerson AS s 
WHERE s.sales_id NOT IN(
    SELECT o.sales_id
    FROM Orders 
    JOIN Orders AS o ON s.sales_id = o.sales_id
    JOIN Company AS c ON o.com_id = c.com_id
    WHERE c.name = 'RED');