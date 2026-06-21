USE OnlineBookstore
GO

--he average amount spent per order?
SELECT AVG(Total_Orders) AS Avarage
FROM ( select SUM( bo.Quantity * bo.Price) As Total_Orders
       from Book_Order bo
	   Group By bo.OrderID) As Total
