/*
 * Procurement Purchase Order System
 * Project #11 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: MSSQL, VB.NET
 * Created: 2012
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'ProcurementDB')
BEGIN
    ALTER DATABASE ProcurementDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE ProcurementDB;
END
GO

CREATE DATABASE ProcurementDB
ON PRIMARY
(
    NAME = 'ProcurementDB_Data',
    FILENAME = 'C:\SQLData\ProcurementDB_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'ProcurementDB_Log',
    FILENAME = 'C:\SQLData\ProcurementDB_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE ProcurementDB SET RECOVERY SIMPLE;
ALTER DATABASE ProcurementDB SET AUTO_UPDATE_STATISTICS ON;
GO

USE ProcurementDB;
GO

PRINT 'Database ProcurementDB created successfully';
PRINT 'Project: Procurement Purchase Order System';
PRINT 'Description: Automated procurement lifecycle from requisition to PO';
GO
