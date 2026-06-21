USE OnlineBookstore
GO

--all customers who purchased a book titled “The Art of War”
SELECT c.CustomerID ,c.CustomerName , c.CustomerNumber , c.CustomerAddress , b.BookTitle
FROM Customer c
JOIN Orderr o
ON c.CustomerID = o.CustomerID
JOIN Book_Order bo
ON o.OrderID = bo.OrderID
JOIN Book b
ON bo.BookID = b.BookID
WHERE b.BookTitle = 'The Art of War'