/*
Purpose: 
Initialize the Data Warehouse by creating the database 'DataWarehouse' 
and the schemas bronze, silver, and gold for Medallion Architecture.
*/

USE master;
GO
-- Create Database 'Data Warehouse'
CREATE DATABASE DataWarehouse;
-- Create Schemas
USE DataWarehouse;
  CREATE SCHEMA bronze;
  GO
  CREATE SCHEMA silver;
  GO
  CREATE SCHEMA gold;
