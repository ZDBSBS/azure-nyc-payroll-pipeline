/*
    Synapse SQL Setup Script
    Project: NYC Payroll Data Analytics

    Purpose:
    - Create the Synapse database used for the project
    - Create an external file format for comma-delimited files
    - Create an external data source pointing to the Data Lake staging folder
    - Create an external table for the payroll summary output

    Important:
    - The CREATE DATABASE statement should be run while connected to the master database.
    - After the database is created, select the database "udacity" in Synapse Studio
      before running the external file format, data source, and external table statements.
*/


/* ============================================================
   Step 1: Create the Synapse database
   Run this while connected to the master database.
   ============================================================ */

IF NOT EXISTS (
    SELECT name
    FROM sys.databases
    WHERE name = 'udacity'
)
CREATE DATABASE udacity;


/* ============================================================
   Step 2: Create external file format
   Run this while connected to the udacity database.

   This file format defines how Synapse reads comma-delimited
   CSV-style files from the Data Lake staging folder.
   ============================================================ */

IF NOT EXISTS (
    SELECT *
    FROM sys.external_file_formats
    WHERE name = 'SynapseDelimitedTextFormat'
)
CREATE EXTERNAL FILE FORMAT [SynapseDelimitedTextFormat]
WITH (
    FORMAT_TYPE = DELIMITEDTEXT,
    FORMAT_OPTIONS (
        FIELD_TERMINATOR = ',',
        USE_TYPE_DEFAULT = FALSE
    )
);


/* ============================================================
   Step 3: Create external data source
   Run this while connected to the udacity database.

   This data source points Synapse to the dirstaging folder
   in the Azure Data Lake Gen2 storage account.
   ============================================================ */

IF NOT EXISTS (
    SELECT *
    FROM sys.external_data_sources
    WHERE name = 'nycpayroll_dirstaging'
)
CREATE EXTERNAL DATA SOURCE [nycpayroll_dirstaging]
WITH (
    LOCATION = 'abfss://nycpayroll@adlsnycpayrollziedb.dfs.core.windows.net/dirstaging'
);


/* ============================================================
   Step 4: Create external table
   Run this while connected to the udacity database.

   This external table reads the payroll summary files that
   will later be written by the Azure Data Factory pipeline
   into the dirstaging folder.
   ============================================================ */

IF NOT EXISTS (
    SELECT *
    FROM sys.external_tables
    WHERE name = 'NYC_Payroll_Summary'
)
CREATE EXTERNAL TABLE [dbo].[NYC_Payroll_Summary] (
    [FiscalYear] int NULL,
    [AgencyName] varchar(50) NULL,
    [TotalPaid] float NULL
)
WITH (
    LOCATION = '/',
    DATA_SOURCE = [nycpayroll_dirstaging],
    FILE_FORMAT = [SynapseDelimitedTextFormat]
);


/* ============================================================
   Verification query
   Use this to confirm that the external table exists.
   ============================================================ */

SELECT name
FROM sys.external_tables
WHERE name = 'NYC_Payroll_Summary';