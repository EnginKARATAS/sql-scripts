
CREATE TABLE dbo.AWSales
(
  OrderID INT PRIMARY KEY IDENTITY(101, 1),
  SalesOrderID INT NOT NULL,
  OrderDetailID INT NOT NULL,
  ProductID INT NOT NULL,
  LineTotal MONEY NOT NULL
);
 
INSERT INTO dbo.AWSales 
  (SalesOrderID, OrderDetailID, ProductID, LineTotal)
SELECT SalesOrderID, SalesOrderDetailID, ProductID, LineTotal
FROM AdventureWorks2014.Sales.SalesOrderDetail
WHERE SalesOrderDetailID < 60000;