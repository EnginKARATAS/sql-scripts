IF EXISTS (SELECT name FROM sys.indexes WHERE name = N'ixOrders')  
DROP INDEX ixOrders ON dbo.AWSales; 
GO
 
CREATE INDEX ixOrders ON dbo.AWSales(SalesOrderID, OrderDetailID);