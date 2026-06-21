USE OnlineBookstore
GO

--the names and contact information of all customers who placed an order between 1 January 2025 and 31 March 2025.
SELECT c.CustomerName , c.CustomerNumber
FROM Customer c
JOIN Orderr o
ON c.CustomerID = o.CustomerID
WHERE o.DateOrdered BETWEEN '2025-01-01' AND '2025-03-31'
