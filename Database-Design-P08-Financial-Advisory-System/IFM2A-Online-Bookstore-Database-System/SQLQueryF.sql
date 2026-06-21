USE OnlineBookstore
GO

-- the total number of books purchased by each customer (include the quantity per each book bought).
SELECT c.CustomerID , bo.Quantity , COUNT(b.BookID) AS Total_Books_Purchased_Per_Customer
FROM Book b
LEFT JOIN Book_Order bo
ON b.BookID = bo.BookID
JOIN Orderr o
ON bo.OrderID = o.OrderID
JOIN Customer c
ON o.CustomerID = c.CustomerID
Group By c.CustomerID , bo.Quantity
