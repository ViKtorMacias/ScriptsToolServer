

SELECT name, database_id, create_date  ,recovery_model_desc
FROM sys.databases   
where name not in (
'master',
'tempdb',
'model',
'msdb');
GO  
--generar script
SELECT 'ALTER DATABASE [' +name +'] SET RECOVERY SIMPLE WITH NO_WAIT'
FROM sys.databases   
where name not in (
'master',
'tempdb',
'model',
'msdb');
GO 
