USE myCarDealership;
GO
CREATE INDEX idx_ZipCode ON Customers(ZipCode);
GO
CREATE INDEX idx_LocationID ON Sales(LocationID);
GO
CREATE INDEX idx_CustomerID ON Sales(CustomerID);
GO
CREATE INDEX idx_OrderID ON SalesDetail(OrderID);
GO
CREATE INDEX idx_InventoryNumber ON SalesDetail(InventoryNumber);
GO