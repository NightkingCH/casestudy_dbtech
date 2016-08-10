﻿/*
 Pre-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be executed before the build script.	
 Use SQLCMD syntax to include a file in the pre-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the pre-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

-- http://stackoverflow.com/questions/11620/how-do-you-kill-all-current-connections-to-a-sql-server-2005-database
-- kill all connections!
USE MASTER
GO

ALTER DATABASE [$(DatabaseName)] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
GO

IF NOT EXISTS(SELECT is_broker_enabled FROM sys.databases WHERE name = '$(DatabaseName)')
	BEGIN
		ALTER DATABASE [$(DatabaseName)] SET ENABLE_BROKER WITH ROLLBACK IMMEDIATE;
	END
GO

ALTER DATABASE [$(DatabaseName)] SET MULTI_USER
GO

USE [$(DatabaseName)]