﻿/*
Deployment script for EX_INFO

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "EX_INFO"
:setvar DefaultFilePrefix "EX_INFO"
:setvar DefaultDataPath "C:\Users\40732\AppData\Local\Microsoft\VisualStudio\SSDT\"
:setvar DefaultLogPath "C:\Users\40732\AppData\Local\Microsoft\VisualStudio\SSDT\"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Altering View [dbo].[Class9]...';


GO
ALTER VIEW [dbo].[Class9]
	AS SELECT [Id], [Name], [Class] 
	
	FROM [dbo].[Table1] WHERE Class = 9
GO
PRINT N'Creating View [dbo].[Class11]...';


GO
CREATE VIEW [dbo].[Class11]
	AS SELECT * FROM [dbo].Table1 WHERE Class = 11
GO
PRINT N'Creating View [dbo].[Class12]...';


GO
CREATE VIEW [dbo].[Class12]
	AS SELECT * FROM [dbo].Table1 WHERE Class = 12
GO
PRINT N'Update complete.';


GO