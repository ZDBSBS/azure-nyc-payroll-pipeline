\# ADF Rebuild Plan



\## Current Blocker



Azure Data Factory is automatically deleted by the Udacity Cloud Lab service.



Activity Log evidence:



\- Operation: Delete Data Factory

\- Status: Succeeded

\- Initiated by: https://cloudlabs-svc/



Do not recreate ADF until Udacity Lab Support resolves the issue.



\---



\## Data Factory Name



Preferred name:



adfnycpayrollziedb



Alternative name:



adf-nycpayroll-ziedb



Region:



West Europe



\---



\## Linked Services



\### Azure Data Lake Gen2 Linked Service



Name:



ls\_adls\_nycpayroll



Type:



Azure Data Lake Storage Gen2



Authentication:



Account key



Storage account:



adlsnycpayrollziedb



Container:



nycpayroll



\---



\### Azure SQL Database Linked Service



Name:



ls\_sqldb\_nycpayroll



Type:



Azure SQL Database



Server:



sql-nycpayroll-ziedb.database.windows.net



Database:



db\_nycpayroll



Authentication:



SQL authentication



User:



sqladminuser



\---



\## ADLS CSV Datasets



\### Agency Master



Name:



ds\_adls\_agencymaster



File path:



nycpayroll/dirpayrollfiles/AgencyMaster.csv



Format:



DelimitedText



First row as header:



Yes



\---



\### Employee Master



Name:



ds\_adls\_empmaster



File path:



nycpayroll/dirpayrollfiles/EmpMaster.csv



Format:



DelimitedText



First row as header:



Yes



\---



\### Title Master



Name:



ds\_adls\_titlemaster



File path:



nycpayroll/dirpayrollfiles/TitleMaster.csv



Format:



DelimitedText



First row as header:



Yes



\---



\### Payroll 2020



Name:



ds\_adls\_nycpayroll\_2020



File path:



nycpayroll/dirhistoryfiles/nycpayroll\_2020.csv



Format:



DelimitedText



First row as header:



Yes



\---



\### Payroll 2021



Name:



ds\_adls\_nycpayroll\_2021



File path:



nycpayroll/dirpayrollfiles/nycpayroll\_2021.csv



Format:



DelimitedText



First row as header:



Yes



\---



\## SQL DB Datasets



\### Agency Master SQL



Name:



ds\_sql\_agency\_md



Table:



dbo.NYC\_Payroll\_AGENCY\_MD



\---



\### Employee Master SQL



Name:



ds\_sql\_emp\_md



Table:



dbo.NYC\_Payroll\_EMP\_MD



\---



\### Title Master SQL



Name:



ds\_sql\_title\_md



Table:



dbo.NYC\_Payroll\_TITLE\_MD



\---



\### Payroll 2020 SQL



Name:



ds\_sql\_payroll\_2020



Table:



dbo.NYC\_Payroll\_Data\_2020



\---



\### Payroll 2021 SQL



Name:



ds\_sql\_payroll\_2021



Table:



dbo.NYC\_Payroll\_Data\_2021



\---



\### Payroll Summary SQL



Name:



ds\_sql\_payroll\_summary



Table:



dbo.NYC\_Payroll\_Summary



\---



\## Required Publish Order



1\. Create Data Factory

2\. Create ADLS linked service

3\. Publish

4\. Create SQL DB linked service

5\. Publish

6\. Create ADLS datasets

7\. Publish

8\. Create SQL datasets

9\. Publish

10\. Create data flows

11\. Publish

12\. Create pipeline

13\. Publish

