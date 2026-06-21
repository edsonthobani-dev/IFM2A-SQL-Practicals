USE OnlineBookstore
GO

--customer has spent the most money on books?
SELECT  c.CustomerID , C.CustomerName , SUM(bo.Quantity * bo.Price) As TotalSpent
FROM Customer c
JOIN Orderr o
ON c.CustomerID = o.CustomerID
JOIN Book_Order bo
ON o.OrderID = bo.OrderID
Group BY  c.CustomerID , C.CustomerName
Having SUM( bo.Quantity * bo.Price) = (
										SELECT MAX(TotalAmount)
										FROM (
												 select o.CustomerID  , SUM(bo.Quantity * bo.Price) AS TotalAmount 
												 From Orderr o
												 JOIN Book_Order bo
												 ON o.OrderID = bo.OrderID
												 Group By o.CustomerID 
											  ) AS Total
	       )