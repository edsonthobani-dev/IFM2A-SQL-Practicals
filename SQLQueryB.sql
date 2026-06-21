CREATE DATABASE OnlineBookstore
GO

USE OnlineBookstore
GO

--create customer table
CREATE TABLE Customer(
		CustomerID   Int Unique NOT NULL,
		CustomerName  VarChar(max) NOT NULL,
		CustomerNumber  VarChar(max) NOT NULL,
		CustomerAddress  VarChar(max) NOT NULL,
		Primary Key(CustomerID)
);

--create Book table
CREATE TABLE Book(
			 BookID  int Unique NOT NULL,
			 BookTitle  VarChar(max) NOT NULL,
			 BookAuthor  VarChar(max) NOT NULL,
			 BookISBN  VarChar(max) NOT NULL,
			 BookPrice  Decimal(10,2) NOT NULL,
			 BookGenre  VarChar(max) NOT NULL,
			 Primary Key(BookID)
);

--create Orderr table
CREATE TABLE Orderr(
			 OrderID  Int Unique NOT NULL,
			 DateOrdered  Date NOT NULL,
			 CustomerID  int NOT NULL, 
			 Primary Key(OrderID),
			 Foreign Key(CustomerID) References Customer(CustomerID)

);

--create Book_Order table , a bridge table 
CREATE TABLE Book_Order(
			BookID  Int Unique NOT NULL,
			OrderID  Int NOT NULL,
			Price  Decimal (10,2) NOT NULL,
			Quantity  Int  NOT NULL,
			Primary Key(BookID ,OrderID),
			Foreign Key(BookID) References Book(BookID),
			Foreign Key(OrderID) References Orderr(OrderID)


);