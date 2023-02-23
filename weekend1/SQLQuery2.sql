/*
This query text was retrieved from showplan XML, and may be truncated.
*/
EE
SELECT
 d.FirstName
,d.MiddleName
,d.LastName
,d.Suffix
,a.OrderDate
,a.ShipDate
,a.Status
,b.ProductID
,b.OrderQty
,b.UnitPrice
FROM Sales.SalesOrderHeader a
INNER JOIN Sales.SalesOrderDetail b ON a.SalesOrderID = b.SalesOrderID
INNER JOIN Sales.Customer c ON a.CustomerID = c.CustomerID
INNER JOIN Person.Person d ON c.PersonID = D.BusinessEntityID
WHERE a.ShipDate = '07/11/2011'

 
 CREATE NONCLUSTERED INDEX [IX_SalesOrderHeader_ShipDate] ON [Sales].[SalesOrderHeader] ([ShipDate])
