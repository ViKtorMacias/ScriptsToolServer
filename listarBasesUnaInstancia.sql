

SELECT name, database_id, create_date  ,recovery_model_desc,state_desc
FROM sys.databases   
where name not in (
'master',
'tempdb',
'model',
'msdb')
order by 1;
GO  

----
select *  FROM sys.databases 
