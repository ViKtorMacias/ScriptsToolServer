
USE [CreditosSCIDev]
GO
--SELECT * FROM sys.sql_logins

SELECT 'DROP USER ['+ name +']' FROM sys.database_principals where type='S'
and name not in ('guest','INFORMATION_SCHEMA','sys')

--SELECT * FROM sys.server_principals
