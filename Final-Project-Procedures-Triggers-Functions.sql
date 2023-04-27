/* Final Project Procedures 

-- Retrieves and displays data --
USE myCarDealership;
GO
CREATE PROC spInventory
AS
SELECT * FROM Inventory
ORDER BY Price;
GO

EXEC spInventory; 

-- Takes 1 input parameter --

USE myCarDealership;
GO
CREATE PROC spLocation
    @ID int 
AS
BEGIN
    SELECT ID, Name
    FROM Location
    WHERE ID = @ID
END
GO 
EXEC spLocation 1;

--Takes 1 input, returns  4 output --
USE myCarDealership;
GO
CREATE PROC spCustomerContact
    @ID int,
    @Fname varchar(20) OUTPUT,
    @LName varchar(20) OUTPUT,
    @Phone varchar(15) OUTPUT,
	@Email varchar(50) OUTPUT
AS
BEGIN
    SELECT  @ID = ID,
                @Fname = Fname,
                @Lname = Lname,
				@Phone = Phone,
				@Email = Email
    FROM Customers
    WHERE ID = @ID
END
GO 
DECLARE @ID int,
             @Fname varchar(20),
             @LName varchar(30),
             @Phone varchar(15),
			 @Email varchar(50)

EXEC spCustomerContact 1, @Fname OUTPUT, @Lname OUTPUT, @Phone OUTPUT, @Email OUTPUT

PRINT 'Customer Name:' + @Fname + @LName;
PRINT 'Phone:' + @Phone;
PRINT 'Email: ' + @Email; 

-- return value --

USE myCarDealership;
GO
CREATE PROC spInventoryCount
AS
DECLARE @InventoryCount int;
SELECT @InventoryCount = COUNT(*)
FROM Inventory 
RETURN @InventoryCount;
GO

DECLARE @InventoryCount int;
EXEC @InventoryCount = spInventoryCount;
PRINT 'There are currently ' + CONVERT(varchar, @InventoryCount) + ' vehicles in stock.';
GO 

Final project User Defined Functions

-- Scalar function that accepts an argument-- 

USE myCarDealership;
GO
CREATE FUNCTION fnGetPrice
    (@Model varchar(20) = '%')
    RETURNS int
BEGIN
    RETURN (SELECT CarID FROM Inventory WHERE Model Like @Model);
END; 

-- Using the function --
GO
SELECT CarID, Make, Model, Price FROM Inventory 
WHERE CarID = dbo.fnGetPrice('Camry%');

-- Table function that accepts at least one argument --

USE myCarDealership;
GO
CREATE FUNCTION fnInventory
	(@Make nvarchar(20) = '%')
	RETURNS table
RETURN
	(SELECT * FROM Inventory WHERE Make LIKE @Make);
GO
SELECT * FROM dbo.fnInventory('%T%');


Final Project Triggers 

 USE myCarDealership;
 GO
 SELECT * INTO InventoryTransaction
 FROM Inventory
 WHERE 1=0;

 ALTER TABLE InventoryTransaction
 ADD Activity varchar(50);
 GO

 CREATE TRIGGER InventoryTransaction_INSERT ON Inventory
    AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @CarID int
	DECLARE @Make varchar(20)
	DECLARE @Model varchar(20)
	DECLARE @Year int
	DECLARE @Miles int
	DECLARE @Price money


    SELECT @CarID =INSERTED.CarID, @Make = INSERTED.Make, @Model = INSERTED.Model, @Year = INSERTED.Year, @Miles = INSERTED.Miles, @Price = INSERTED.Price
	FROM INSERTED

    INSERT INTO InventoryTransaction VALUES(@CarID, @Make, @Model, @Year, @Miles, @Price, 'Inserted')
END
GO

-- Test insert trigger
INSERT INTO Inventory VALUES(20, 'Honda','Pilot',2012,159000,10000);
GO

--Create Delete Trigger--

CREATE TRIGGER InventoryTransaction_DELETE ON Inventory
    AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @CarID int
	DECLARE @Make varchar(20)
	DECLARE @Model varchar(20)
	DECLARE @Year int
	DECLARE @Miles int
	DECLARE @Price money


    SELECT @CarID = DELETED.CarID, @Make = DELETED.Make, @Model = DELETED.Model, @Year = DELETED.Year, @Miles = DELETED.Miles, @Price = DELETED.Price
	FROM DELETED

    INSERT INTO InventoryTransaction VALUES(@CarID, @Make, @Model, @Year, @Miles, @Price, 'Deleted')
END
GO

--Testing Delete Trigger--
DELETE FROM Inventory WHERE CarID = 20;
GO

--View InventoryTransaction table--
SELECT * FROM InventoryTransaction;

 -- creating update trigger --
 CREATE TRIGGER InventoryTransaction_Update ON Inventory
    AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    SET NOCOUNT ON;
    DECLARE @CarID int
	DECLARE @Make varchar(20)
	DECLARE @Model varchar(20)
	DECLARE @Year int
	DECLARE @Miles int
	DECLARE @Price money

    SELECT @CarID = INSERTED.CarID, @Make = INSERTED.Make, @Model = INSERTED.Model, @Year = INSERTED.Year, @Miles = INSERTED.Miles, @Price = INSERTED.Price
	FROM INSERTED
	  INSERT INTO InventoryTransaction VALUES(@CarID, @Make, @Model, @Year, @Miles, @Price, 'Updated' )
END
GO

--Testing Insert and Update--
INSERT INTO Inventory VALUES(21,'Ford','Focus',2010,180000,4200);
GO

UPDATE Inventory 
SET Price = 4000
WHERE CarID = 21;
GO
SELECT * FROM InventoryTransaction; */
