/*
How many customers used a VISA to  purchase their car

USE myCarDealership;
Select COUNT(Customers.PmtMethod) AS 'CUSTOMERS WHO USED VISA'
FROM Customers
WHERE PmtMethod='VISA';

Highest, Lowest and average price of cars

USE myCarDealership;
SELECT MIN (Inventory.Price) AS 'Lowest Priced Car', MAX(Inventory.Price) AS 'Highest Priced Car', AVG(Inventory.Price) AS 'Average Price of Cars'
FROM Inventory;

How many customers live in California

USE myCarDealership
SELECT ZipCode.State, COUNT(Customers.ID) AS 'Customers in California'
FROM Customers JOIN ZipCode ON Customers.ZipCode = ZipCode.ZipCode
WHERE State='CA'
GROUP BY ZipCode.State
ORDER BY ZipCode.State DESC

How many Cars each customer has purchased

USE myCarDealership
SELECT CustomerID, Fname AS 'First Name', Lname AS 'Last Name', COUNT(Sales.ID) AS [Number of Purchased Cars]
FROM Sales
JOIN Customers ON Sales.CustomerID = Customers.ID
GROUP BY CustomerID, Fname, Lname;

Total price of all inventory

USE myCarDealership;
SELECT MIN (Inventory.Price) AS 'Lowest Priced Car', 
MAX(Inventory.Price) AS 'Highest Priced Car', 
SUM(Inventory.Price) AS 'Price of all Inventory'
FROM Inventory;
*/
