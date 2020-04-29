USE [ALIADOS]
GO
DBCC SHRINKFILE (N'ALIADOS_log' , 0)
GO


SELECT 'USE ['+d.name+ ']
GO
DBCC SHRINKFILE (N''' + m.name + ''' , 0)
GO'
FROM sys.master_files m
INNER JOIN sys.databases d ON m.database_id = d.database_id
where 
m.name like '%log%'
and  (m.size * 8 / 1024 )>10

select physical_name,(m.size * 8 / 1024 )
FROM sys.master_files m
INNER JOIN sys.databases d ON m.database_id = d.database_id
order by 2 desc
---Generar script
SELECT 'USE ['+d.name+ ']
GO
DBCC SHRINKDATABASE (N''' + m.name + ''')
GO'
FROM sys.master_files m
INNER JOIN sys.databases d ON m.database_id = d.database_id
where 
physical_name like '%mdf%'

