/*
===================================================================================
Create Database and Schemas
===================================================================================
Script Purpose:
	This script creates a new database named 'DataWarehouse' after checking if it already exists.
	if the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
	within the database: 'bronze', 'silver', and 'gold',

WARNING 
	Running this script will drop the entire 'DataWarehouse' database if exists.
	All data in the database will be permanetly deleted. Proceed with cautuin
	and ensure you have proper backups before runnung this script.
*/

USE master;
GO

-- Drop and recreate the 'DataWarhouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
