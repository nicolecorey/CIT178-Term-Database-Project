/* final project views 
USE myCarDealership;
GO

// View 1 //

CREATE VIEW AvailableInventory
AS
SELECT CarID, Make, Model, [Year], Miles, Price
FROM Inventory;
GO

SELECT * FROM Inventory;

UPDATE AvailableInventory
SET Price = 6500
WHERE CarID=5;
GO
SELECT * FROM AvailableInventory;
GO

// View 2//

USE myCarDealership
GO
CREATE VIEW RecentSales
AS
SELECT Sales.ID, [DATE], LocationID, CustomerID, OrderID InventoryNumber
FROM Sales JOIN SalesDetail ON SalesDetail.ID = Sales.ID;
GO

SELECT * FROM RecentSales;

// View 3 //

CREATE VIEW CustomerPurchase
AS
SELECT (FName + ' ' + LName) AS 'Name', Make, Model, Price, Sales.ID, [DATE]
FROM Customers JOIN Sales ON Sales.CustomerID = Customers.ID
INNER JOIN SalesDetail ON SalesDetail.OrderID = Sales.ID
INNER JOIN Inventory ON Inventory.CarID = SalesDetail.InventoryNumber;

SELECT * FROM CustomerPurchase;

// View 4 //

CREATE VIEW CustomerInfo
AS
SELECT (FName + ' ' + LName) AS 'Name', (Address + ' ' +  ZipCode) AS 'Full Address', Phone, Email
FROM Customers;
GO

SELECT * FROM CustomerInfo;
*/
