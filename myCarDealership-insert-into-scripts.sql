/* USE myCarDealership;
GO
INSERT INTO ZipCode VALUES ('90001', 'Los Angeles', 'CA')
INSERT INTO ZipCode VALUES ('60007', 'Chicago', 'IL')
INSERT INTO ZipCode VALUES ('98101', 'Seattle', 'WA')
INSERT INTO ZipCode VALUES ('94016', 'San Francisco', 'CA')
INSERT INTO ZipCode VALUES ('88901', 'Las Vegas', 'NV')
INSERT INTO ZipCode VALUES ('02108', 'Boston', 'MA') 

INSERT INTO Inventory VALUES (1,'Toyota','Camry',2020,70000,22000.00)
INSERT INTO Inventory VALUES (2,'Subaru','Outback',2016,100000,17000.00)
INSERT INTO Inventory VALUES (3,'Honda','Pilot',2008,85000,9500.00)
INSERT INTO Inventory VALUES (4,'Toyota','RAV4',2010,110000,10000.00)
INSERT INTO Inventory VALUES (5,'Subaru','Impreza',2010,120000,7000.00)
INSERT INTO Inventory VALUES (6,'Honda','Civic',2021,41000,18000.00)
INSERT INTO Inventory VALUES (7,'Subaru','Outback',2016,120000,16000.00)
INSERT INTO Inventory VALUES (8,'Honda','Civic',2020,70000,15000.00)
INSERT INTO Inventory VALUES (9,'Subaru','Outback',2017,100000,18000.00)
INSERT INTO Inventory VALUES (10,'Toyota','RAV4',2012,90000,12500.00) 

SELECT * FROM Inventory; 

INSERT INTO Location VALUES (1, 'Cars R Us')
INSERT INTO Location VALUES (2, 'Kens Car Sales')
INSERT INTO Location VALUES (3, 'Used Car Factory')
INSERT INTO Location VALUES (4, 'Car Palace')
INSERT INTO Location VALUES (5, 'Affordable Cars')
INSERT INTO Location VALUES (6, 'Captain Cars') 

ALTER TABLE Customers
ADD PmtMethod varchar(10); 

INSERT INTO Customers VALUES (1, 'Chuckie', 'Finster', '1120 Dopey Rd', '90001', '123-555-5555', 'cfinster@gmail.com', 'VISA')
INSERT INTO Customers VALUES (2, 'Angelica', 'Pickles', '123 Bashful Rd', '60007', '345-555-5555', 'apickles@yahoo.com', 'Cash')
INSERT INTO Customers VALUES (3, 'Tommy', 'Pickles', '1450 Happy Rd', '98101', '678-555-5555', 'tpickles@yahoo.com', 'Cash')
INSERT INTO Customers VALUES (4, 'Susie', 'Carmichael', '960 Sleepy Ln', '94016', '910-555-5555', 'scarmichael@hotmail.com', 'AMEX')
INSERT INTO Customers VALUES (5, 'Lillian', 'DeVille', '5400 Grumpy St', '88901', '987-555-5555', 'ldeville@gmail.com', 'VISA')
INSERT INTO Customers VALUES (6, 'Phillip', 'DeVille', '230 Sneezy Ln', '02108', '654-555-5555', 'pdeville.com', 'AMEX') 

INSERT INTO Sales VALUES (1,'04/22/2021',2,5)
INSERT INTO Sales VALUES (2,'05/16/2020',2,1)
INSERT INTO Sales VALUES (3,'07/11/2019',3,4) 
INSERT INTO Sales VALUES (4,'09/20/2022',1,2) 
INSERT INTO Sales VALUES (5,'10/10/2021',5,3) 
INSERT INTO Sales VALUES (6,'04/05/2020',4,6) 

INSERT INTO SalesDetail VALUES (1,2,2,1)
INSERT INTO SalesDetail VALUES (2,2,3,1)
INSERT INTO SalesDetail VALUES (3,3,1,1)
INSERT INTO SalesDetail VALUES (4,4,5,1)
INSERT INTO SalesDetail VALUES (5,1,8,1)
INSERT INTO SalesDetail VALUES (6,1,10,1)
INSERT INTO SalesDetail VALUES (7,3,6,1)
INSERT INTO SalesDetail VALUES (8,5,4,1)
INSERT INTO SalesDetail VALUES (9,6,7,1)
INSERT INTO SalesDetail VALUES (10,4,9,1) */






