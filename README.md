# Azure NYC Payroll Data Pipeline

This project builds a data integration pipeline for NYC Payroll Data Analytics using Azure services.

## Project Overview

The goal of this project is to process NYC payroll data, load it into Azure SQL Database, aggregate payroll payments, and make the results available for analytics through Azure Synapse Analytics.

## Azure Services Used

- Azure Data Lake Gen2
- Azure SQL Database
- Azure Data Factory
- Azure Synapse Analytics
- GitHub

## Source Data

The project uses the following CSV files:

- EmpMaster.csv
- AgencyMaster.csv
- TitleMaster.csv
- nycpayroll_2020.csv
- nycpayroll_2021.csv

## Target Output

The final summary data is aggregated by:

- FiscalYear
- AgencyName
- TotalPaid

TotalPaid is calculated as:

TotalPaid = RegularGrossPaid + TotalOTPaid + TotalOtherPay

## Repository Structure

- screenshots/01-resources
- screenshots/02-linked-services
- screenshots/03-datasets
- screenshots/04-data-flows
- screenshots/05-pipeline-run
- screenshots/06-verification
- adf-export
- notes

## Required Submission Evidence

The project submission will include:

- Azure Data Factory linked services
- Azure Data Factory datasets
- Azure Data Factory mapping data flows
- Azure Data Factory pipeline
- Screenshots of successful pipeline execution
- Screenshots of SQL DB query results
- Screenshots of Data Lake Gen2 staging output
- Screenshots of Synapse external table query results

## Udacity Project Rubric

This project must satisfy the Udacity Project Rubric requirements for:

- Linked Services
- Datasets
- Data Flows
- Pipeline
- Data Verification