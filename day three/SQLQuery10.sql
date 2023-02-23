--IF EXISTS(SELECT name FROM sys.stats  
--  WHERE name = N'TotalStats'  
--    AND object_id = OBJECT_ID(N'dbo.AWSales'))
--DROP STATISTICS dbo.AWSales.TotalStats;  
--GO 
 
---
use AdventureWorks2014

go

CREATE STATISTICS TotalStats ON dbo.AWSales(LineTotal)  
WHERE LineTotal > 100  
WITH FULLSCAN;

---
use AdventureWorks2016

go

CREATE STATISTICS CurrencyStatistics ON Sales.CurrencyRate(AverageRate)  
WHERE AverageRate < 4.5  
WITH FULLSCAN;

