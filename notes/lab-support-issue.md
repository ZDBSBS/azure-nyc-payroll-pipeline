\# Lab Support Issue: Azure Data Factory Auto Deletion



\## Issue Summary



During the Udacity Cloud Lab for the NYC Payroll Data Analytics project, Azure Data Factory resources were automatically deleted shortly after successful deployment.



\## Affected Resource



Azure Data Factory



Attempted names:



\- adf-nycpayroll-ziedb

\- adfnycpayrollziedb



\## Resource Group



ODL-DataEng-301868



\## Observed Behavior



1\. Azure Data Factory was created successfully.

2\. The deployment showed as successful.

3\. The Data Factory appeared briefly in the resource group.

4\. After waiting and refreshing the resource group, the Data Factory disappeared.

5\. The Azure Activity Log showed that the delete operation was initiated by:



https://cloudlabs-svc/



\## Activity Log Evidence



The Activity Log showed:



\- Operation name: Delete Data Factory

\- Status: Succeeded

\- Event initiated by: https://cloudlabs-svc/



\## Impact



This blocks the project because Azure Data Factory is required for:



\- Linked Services

\- Datasets

\- Mapping Data Flows

\- Pipelines

\- GitHub publishing from Azure Data Factory



\## Support Contacted



An email was sent to:



udacity-labsupport@udacity.com



Subject:



Error in Lab - Azure Data Factory automatically deleted by cloudlabs-svc



\## Current Status



Waiting for Udacity Lab Support response.



Until the lab issue is resolved, Azure Data Factory steps cannot be completed reliably.

