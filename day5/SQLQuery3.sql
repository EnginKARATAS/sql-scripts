/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [ProductSubcategoryID]
      ,[ProductCategoryID]
      ,[Name]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2012].[Production].[ProductSubcategory]

  select * from Production.ProductSubcategory c where c.ProductSubcategoryID IN (1,5,6)