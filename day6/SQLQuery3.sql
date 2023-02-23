--CREATE STATISTICS ContactPromotion2  
--ON Person.Person (BusinessEntityID, LastName, EmailPromotion)  
--WHERE EmailPromotion = 1 
--WITH SAMPLE 50 PERCENT;  

--SELECT 
--	   [BusinessEntityID]
--      ,[PersonType]
--      ,[NameStyle]
--      ,[Title]
--      ,[FirstName]
--      ,[MiddleName]
--      ,[LastName]
--      ,[Suffix]
--      ,[EmailPromotion]
--      ,[AdditionalContactInfo]
--      ,[Demographics]
--      ,[rowguid]
--      ,[ModifiedDate]
--  FROM [AdventureWorks2012].[Person].[Person]
--  where Person.EmailPromotion = 2   

  CREATE STATISTICS BikeWeights
    ON Production.Product (Weight)
WHERE ProductSubcategoryID IN (1,2,3);
GO

SELECT P.Weight AS Weight, S.Name AS BikeName  
FROM Production.Product AS P  
    JOIN Production.ProductSubcategory AS S   
    ON P.ProductSubcategoryID = S.ProductSubcategoryID  
WHERE P.ProductSubcategoryID IN (1,2,3) AND P.Weight > 25  
ORDER BY P.Weight;  
GO  