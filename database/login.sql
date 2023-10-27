USE [master]
GO

IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE [name] = N'NicoPereira')
BEGIN
	PRINT 'Creando Login'
	CREATE LOGIN [NicoPereira] WITH 
		PASSWORD = N'1234', 
		DEFAULT_DATABASE = [biblio-db], 
		CHECK_EXPIRATION = OFF, 
		CHECK_POLICY = OFF
END
GO

USE [biblio-db]
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE [name] = N'NicoPereira')
BEGIN
	PRINT 'Creando User'
	CREATE USER [NicoPereira] FOR LOGIN [NicoPereira]
	ALTER ROLE [db_owner] ADD MEMBER [NicoPereira]
END 
GO