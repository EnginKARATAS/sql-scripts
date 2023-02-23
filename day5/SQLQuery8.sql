--Belirli bir tabloda veya görünüm nesne kimliğinde Stats_Date işlevinin kullanılması, 
--en son istatistik güncellemesinin tarihini ve saatini sağlar.

SELECT name, STATS_DATE(object_id, stats_id) as LastUpdated
FROM sys.stats 
WHERE object_id = OBJECT_ID('Person.Address');