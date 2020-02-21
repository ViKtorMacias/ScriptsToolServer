--Reducimos el log de transacciones a  1 MB.

---generar script
use master
SELECT  'use ' +d.name +' DBCC SHRINKFILE('+ m.name +', 1);'
FROM sys.master_files m
INNER JOIN sys.databases d ON m.database_id = d.database_id
where 
m.name like '%log%'
and  (m.size * 8 / 1024 )>10
ORDER BY  m.name

