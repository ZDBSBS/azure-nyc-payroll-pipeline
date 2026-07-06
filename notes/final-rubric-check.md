\# Final Rubric Check



\## Project: Azure NYC Payroll Data Pipeline



This checklist verifies that the project meets the Udacity Project Rubric requirements.



\---



\## 1. Linked Services



\### Requirement



The repository must contain linked services for:



\- Azure Data Lake Gen2

\- Azure SQL Database



\### Evidence



ADF export files:



\- adf-export/linkedService/ls\_adls\_nycpayroll.json

\- adf-export/linkedService/ls\_sqldb\_nycpayroll.json



Screenshot:



\- screenshots/02-linked-services/linked-services-created.png



\### Status



Complete



\---



\## 2. Datasets



\### Requirement



The repository must contain datasets for:



\- AgencyMaster.csv

\- EmpMaster.csv

\- TitleMaster.csv

\- nycpayroll\_2020.csv

\- nycpayroll\_2021.csv

\- SQL DB target tables



\### Evidence



ADF export folder:



\- adf-export/dataset/



Screenshot:



\- screenshots/03-datasets/datasets-created.png



\### Status



Complete



\---



\## 3. Data Flows



\### Requirement



The repository must contain Mapping Data Flows to:



\- Load CSV files from Azure Data Lake Gen2 into Azure SQL DB

\- Aggregate payroll data

\- Create TotalPaid

\- Write summary data to SQL DB and Data Lake staging



\### Evidence



ADF export folder:



\- adf-export/dataflow/



Load data flow screenshot:



\- screenshots/04-data-flows/load-data-flows-created.png



Aggregate data flow screenshot:



\- screenshots/04-data-flows/aggregate-data-flow-created.png



\### Status



Complete



\---



\## 4. Pipeline



\### Requirement



The repository must contain a pipeline with Execute Data Flow activities.



\### Evidence



ADF export file:



\- adf-export/pipeline/pl\_nyc\_payroll\_main.json



Pipeline design screenshot:



\- screenshots/05-pipeline-run/pipeline-design.png



Successful pipeline run screenshot:



\- screenshots/05-pipeline-run/pipeline-run-succeeded.png



\### Status



Complete



\---



\## 5. Data Verification



\### Requirement



Screenshots must show final data after pipeline execution in:





