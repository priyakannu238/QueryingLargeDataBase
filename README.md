# Project Title Querying Large Relational Database

## Description

This project focuses on efficiently extracting valuable insights from a complex relational database using SQL queries. The database contains various tables, including customer details, sales orders, and related information. The SQL queries are designed to retrieve specific data, such as customer names, email addresses, phone numbers, sales order details, and total sales for specific time periods. The project showcases proficient SQL skills in handling intricate relational databases, generating meaningful reports, and providing critical business analysis.

## Queries

1. Get all the details from the person table, including email ID, phone number, and phone number type.
2. Retrieve the details of sales headers made in May 2011.
3. Fetch the details of sales order details made in the month of May 2011.
4. Calculate the total sales made in May 2011.
5. Get the total sales made in the year 2011, grouped by month, ordered by increasing sales.
6. Obtain the total sales made to the customer with FirstName 'Gustavo' and LastName 'Achong'.

## Tasks To Be Performed:

1. Download the AdventureWorks database from the following location and restore it in your server: Location: [https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks](https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks)

```
File Name: AdventureWorks2012.bak
AdventureWorks is a sample database shipped with SQL Server and it can
be downloaded from the GitHub site. AdventureWorks has replaced
Northwind and Pubs sample databases that were available in SQL Server
in 2005. Microsoft keeps updating the sample database as it releases new
versions.
```

3. Restore Backup: Follow the below steps to restore a backup of your database using SQL Server Management Studio: a. Open SQL Server Management Studio and connect to the targetSQL Server instance b. Right-click on the Databases Node and select Restore Database c. Select Device and click on the ellipsis (...) d. In the dialog box, select Backup devices, click on Add, navigate to the database backup in the file system of the server, select the backup, and click on OK. e. If needed, change the target location for the data and log files in the Files pane Note: It is a best practice to place the data and log files on different drives. f. Now, click on OK
4. Perform the following with help of the above database: a. Get all the details from the person table including email ID, phone number and phone number type b. Get the details of the sales header order made in May 2011 c. Get the details of the sales details order made in the month of May 2011 d. Get the total sales made in May 2011 e. Get the total sales made in the year 2011 by month order by increasing sales f. Get the total sales made to the customer with FirstName='Gustavo' and LastName ='Achong'
