# Write your MySQL query statement below
SELECT Name AS 'Customers'
FROM Customers
LEFT JOIN Orders
ON Customers.id = Orders.customerId
WHERE Orders.customerId IS NULL;