use AdventureWorks2014 

go

select * from Sales.SalesOrderDetail c
cross join Production.Product as p
where p.ProductID < 100