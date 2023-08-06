-- 1. Get all the details from the person table including email ID, phone number, and phone number type
SELECT CONCAT(FirstName, ' ', LastName) as FullName,
			EmailAddress,
			PhoneNumber,
			CASE 
			WHEN Type.PhoneNumberTypeID = Phone.PhoneNumberTypeID THEN Type.Name END AS PhoneType
FROM Person.Person as P
JOIN Person.EmailAddress Email ON P.BusinessEntityID = Email.BusinessEntityID
JOIN Person.PersonPhone Phone ON Phone.BusinessEntityID = EMail.BusinessEntityID
JOIN Person.PhoneNumberType Type ON Phone.PhoneNumberTypeID = Type.PhoneNumberTypeID;



-- 2. Get the details of the sales header order made in May 2011
SELECT  * FROM Sales.SalesOrderHeader as OrderHeader
WHERE Month(OrderDate)= 6 AND  Year(OrderDate) = 2011;


-- 3. Get the details of the sales details order made in the month of May 2011
SELECT OrderDetail.* FROM Sales.SalesOrderDetail OrderDetail
INNER JOIN Sales.SalesOrderHeader as OrderHeader
ON OrderHeader.SalesOrderID = OrderDetail.SalesOrderID
WHERE Month(OrderDate)= 6 AND  Year(OrderDate) = 2011;



-- 4. Get the total sales made in May 2011
SELECT Sum(OrderQty*UnitPrice) as TotalSalesInMay2011
FROM Sales.SalesOrderDetail OrderDetail
INNER JOIN Sales.SalesOrderHeader as OrderHeader
ON OrderHeader.SalesOrderID = OrderDetail.SalesOrderID
WHERE Month(OrderDate)= 6 AND  Year(OrderDate) = 2011;

-- 5. Get the total sales made in the year 2011 by month order by increasing sales
SELECT  DATENAME(Month,OrderDate) as MonthofPurchase,
		SUM(OrderQty*UnitPrice) as Sales
FROM Sales.SalesOrderDetail OrderDetail
INNER JOIN Sales.SalesOrderHeader as OrderHeader
ON OrderHeader.SalesOrderID = OrderDetail.SalesOrderID
WHERE Year(OrderDate) = 2011
GROUP BY DATENAME(Month,OrderDate)
ORDER BY SUM(OrderQty*UnitPrice);

-- Get the total sales made to the customer with FirstName='Gustavo' and LastName ='Achong'

SELECT
     p.Title, p.FirstName, p.MiddleName, p.LastName, tmp.TotalAmount
FROM Sales.Customer C
     INNER JOIN Person.Person AS p ON p.BusinessEntityID=c.PersonID
     LEFT JOIN
       (
         SELECT
                  soh.CustomerID, SUM(LineTotal) AS TotalAmount
         FROM     Sales.SalesOrderDetail            AS sod
                  INNER JOIN Sales.SalesOrderHeader AS soh ON soh.SalesOrderID=sod.SalesOrderID
         GROUP BY soh.CustomerID
       )tmp ON tmp.CustomerID=c.CustomerID
WHERE P.FirstName='Gustavo' and P.LastName ='Achong';