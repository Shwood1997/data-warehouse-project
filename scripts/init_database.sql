/*
=========================================================
CREATE DATABASE AND SCHEMAS
=========================================================
Script Purpose:
  This script creates a new database named "DataWarehouse" after checking if it already exists.
  If the database exists, it is dropped and recreated. It also sets up three schemas within the database called bronze, silver, and gold.

Warning: 
  Running this script will drop the entire database if it exists. All data will be permanently deleted.
  Check to ensure you have all proper backups before running this script. 
*/

USE master;
GO

-- Drop and recreate the database
IF EXISTS (SELECT 1 FROM sys.database WHERE name = 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
  GO

-- Create the Database 
CREATE DATABASE DataWarehouse;

USE DataWarehouse;
GO

-- Create the schemas
CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO
  
CREATE SCHEMA gold;
GO
