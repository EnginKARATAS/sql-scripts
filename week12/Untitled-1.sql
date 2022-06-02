/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Log_ID]
      ,[log_tarih]
      ,[log_type]
      ,[Log_table_name]
      ,[İslem]
  FROM [UrunSatis].[dbo].[Log]