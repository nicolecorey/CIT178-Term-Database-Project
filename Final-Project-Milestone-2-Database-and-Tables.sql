CREATE DATABASE myCarDealership;

GO
USE myCarDealership;
CREATE TABLE Inventory(
CarID int NOT NULL,
Make varchar (20) NOT NULL,
Model varchar (20) NOT NULL,
Year int,
Miles int,
Price money,
PRIMARY KEY(CarID)
);

GO

CREATE TABLE Customers(
ID int NOT NULL,
Fname varchar (20) NOT NULL,
Lname varchar (30) NOT NULL,
Address varchar (50),
ZipCode varchar (10) NOT NULL,
Phone varchar (15),
Email varchar (50),
PRIMARY KEY(ID)
);

GO

CREATE TABLE ZipCode(
ZipCode varchar (10) NOT NULL,
City varchar (20) NOT NULL,
State varchar (2) NOT NULL,
PRIMARY KEY(ZipCode)
);

GO

CREATE TABLE Location(
ID int NOT NULL,
Name varchar (30) NOT NULL,
PRIMARY KEY (ID)
);

GO

CREATE TABLE Sales(
ID int NOT NULL,
DATE datetime NOT NULL,
LocationID int NOT NULL,
CustomerID int NOT NULL,
PRIMARY KEY (ID)
);
GO

CREATE TABLE SalesDetail(
ID int NOT NULL,
OrderID int NOT NULL,
InventoryNumber int NOT NULL,
Qty int,
PRIMARY KEY (ID)
);
GO 
