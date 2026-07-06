\# Screenshot Checklist



\## Step 1: Resources



\- Data Lake Gen2 storage account with container

\- Folders in Data Lake:

&#x20; - dirpayrollfiles

&#x20; - dirhistoryfiles

&#x20; - dirstaging

\- Uploaded files in dirpayrollfiles:

&#x20; - EmpMaster.csv

&#x20; - AgencyMaster.csv

&#x20; - TitleMaster.csv

&#x20; - nycpayroll\_2021.csv

\- Uploaded file in dirhistoryfiles:

&#x20; - nycpayroll\_2020.csv

\- SQL DB tables created

\- Synapse external table created



\## Step 2: Linked Services



\- Linked Service to Azure Data Lake Gen2

\- Linked Service to Azure SQL DB

\- Linked Services page after successful creation



\## Step 3: Datasets



\- Dataset for nycpayroll\_2021.csv

\- Dataset for nycpayroll\_2020.csv

\- Dataset for EmpMaster.csv

\- Dataset for AgencyMaster.csv

\- Dataset for TitleMaster.csv

\- Datasets for SQL DB tables

\- Dataset for Synapse summary table



\## Step 4: Data Flows



\- Data flows from Data Lake Gen2 to SQL DB

\- Data flow for each source file

\- Data flow configurations saved



\## Step 5: Aggregate Data Flow



\- Aggregate data flow screenshot

\- Union of 2020 and 2021 payroll data

\- FiscalYear parameter

\- Derived TotalPaid column

\- Aggregation by AgencyName and FiscalYear

\- Sink to SQL DB summary table

\- Sink to Data Lake dirstaging folder



\## Step 6: Pipeline Run



\- Pipeline design screenshot

\- Successful pipeline run screenshot

\- Activity runs visible

\- Data flow success indicators visible



\## Step 7: Verification



\- SQL DB summary query result

\- dirstaging folder with generated files

\- Synapse external table query result



\## GitHub Submission



\- Azure Data Factory objects published to GitHub

\- Repository downloaded or available for submission

\- Final screenshots included

