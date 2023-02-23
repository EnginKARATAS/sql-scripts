use AdventureWorks2014
go  
SELECT s.stats_id StatsID,
  s.name StatsName,
  sc.stats_column_id StatsColID,
  c.name ColumnName 
FROM sys.stats s 
  INNER JOIN sys.stats_columns sc
    ON s.object_id = sc.object_id AND s.stats_id = sc.stats_id
  INNER JOIN sys.columns c
    ON sc.object_id = c.object_id AND sc.column_id = c.column_id
WHERE OBJECT_NAME(s.object_id) = 'awsales'
ORDER BY s.stats_id, sc.column_id;
--
select * FROM sys.stats 
