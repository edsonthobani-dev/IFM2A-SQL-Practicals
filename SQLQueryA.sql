CREATE DATABASE SSH_Financial
GO

USE SSH_Financial
GO

--Advisor Table
CREATE TABLE Advisor(
             AdvisorID int Unique NOT NULL,
             FirstName VarChar(max) NOT NULL,
             LastName VarChar(max) NOT NULL,
             RegistrationNumber VarChar(max) NOT NULL,
             Primary Key (AdvisorID)


);

--Client Table
CREATE TABLE Client(
             ClientID int Unique NOT NULL,
             FirstName VarChar(max) NOT NULL,
             LastName VarChar(max) NOT NULL,
             ContactNumber VarChar(max) NOT NULL,
             Primary Key (ClientID)


);

--Consultation table 
CREATE TABLE Consultation(
             ConsultationID int Unique NOT NULL,
             AdvisorID int  NOT NULL,
             ClientID int NOT NULL,
             ConsultationDate Date NOT NULL,
             ConsultationTime Time NOT NULL,
             Primary Key (ConsultationID),
             Foreign Key (AdvisorID) References Advisor(AdvisorID),
             Foreign Key (ClientID) References Client(ClientID)
             


);

--Invoice Table
CREATE TABLE Invoice(
             InvoiceID int Unique NOT NULL,
             ConsultationID int  NOT NULL,
             Amount Decimal(10,2) NOT NULL,
             Statuss VarChar(9) NOT NULL Default 'Unpaid',
             Primary Key (InvoiceID),
             Foreign Key (ConsultationID) References Consultation(ConsultationID)


);


