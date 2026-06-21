USE OnlineBookstore
GO

--insert for Customer 2 records 
INSERT INTO Customer(CustomerID,CustomerName,CustomerNumber,CustomerAddress)
VALUES(1001 , 'THOBANI MSTHILIBA' , '0680699772','12477 BUDLELWANO STREET'),
      (1002 , 'EDISON NZUZO' , '0610320430' , 'PALM RIDGE')

--insert for Book 2 records
INSERT INTO Book(BookID,BookTitle,BookAuthor,BookISBN,BookPrice,BookGenre)
VALUES(2001 , 'The Art of War' , 'JAMES BOND' , '1234567891234' , 235.76 , 'SAD'),
      (2002 , 'THE DIAMOND' , 'NDABANE MPANGAZITHA' , '2345678912345' , 546573.46 ,'HORROR')

--insert for Orderr 2 records
INSERT INTO Orderr(OrderID , DateOrdered , CustomerID)
VALUES(3001 , '2025-02-10' , 1002),
      (3002 , '2022-05-29' , 1001)

--insert for Book_Order 2 records
INSERT INTO Book_Order(BookID,OrderID , Price,Quantity)
VALUES (2001,3002, 2364.57 , 6),
       (2002 , 3001 , 7645.32 , 3)
	  
	   

