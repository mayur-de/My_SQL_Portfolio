-- 2. Aggreagtions in SQL

-- Use Nrothwind DB

USE NorthWind_Commerce

-- Q1: Count the total number of products.

SELECT COUNT(*) AS [Total Number of Products] 
FROM Products

-- alternatively, use count ProductName
SELECT COUNT(ProductName) AS [Total Number of Products]
FROM Products

-- 2. Find the total number of orders.

SELECT COUNT(*) AS TotalNumberofOrders
FROM Orders

-- 3. Find the average unit price of products.

SELECT AVG(UnitPrice) AS AverageUnitPrice
FROM Products

-- 4. Find the maximum unit price of products.

SELECT MAX(UnitPrice) AS MaxUnitPrice
FROM Products

-- 5. Find the minimum unit price of products.

SELECT MIN(UnitPrice) AS MinUnitPrice
FROM Products

-- 6. Find the total number of products per category.

SELECT CategoryID, COUNT(ProductName) AS ProductCount
FROM Products
GROUP BY CategoryID

-- alternatively, If you want to include Category Name, Join two table

SELECT C.CategoryName, COUNT(P.ProductName)
FROM Products AS P
JOIN Categories AS C ON C.CategoryID = P.CategoryID
GROUP BY C.CategoryName

-- 7. Find the average price of products per supplier.

SELECT SupplierID, AVG(UnitPrice) AS AvgUnitPrice
FROM Products
GROUP BY SupplierID

-- alternatively, Group By SupplierName and ProductName

SELECT SupplierID, ProductName, AVG(UnitPrice) AS AvgUnitPrice
FROM Products
GROUP BY SupplierID, ProductName
ORDER BY SupplierID, ProductName

-- 8. Find the total number of orders placed per customer.

SELECT CustomerID, COUNT(CustomerID) AS OrdersPerCustomer
FROM Orders
GROUP BY CustomerID

-- 9. Find the total revenue generated per product [Table: Order Details].

SELECT ProductID, SUM(UnitPrice) AS RevenuePerProduct
FROM [Order Details]
GROUP BY ProductID

-- alternatevely, add ProductName through JOIN

SELECT P.ProductName, O.ProductID, SUM(O.UnitPrice) AS RevenuePerProduct
FROM [Order Details] AS O
JOIN Products AS P ON P.ProductID = O.ProductID
GROUP BY P.ProductName, O.ProductID

-- 10. Find the maximum quantity ordered per order.

SELECT OrderID, MAX(Quantity)AS MaxQuantityPerOrder
FROM [Order Details]
GROUP BY OrderID

-- 11. Find categories with more than 5 products.

SELECT CategoryID, COUNT(ProductName) AS ProductCount
FROM Products
GROUP BY CategoryID
HAVING COUNT(ProductName) > 5

-- alternatovely, include CategoryName

SELECT C.CategoryName, P.CategoryID, COUNT(P.ProductName) AS ProductCount
FROM Categories AS C
JOIN Products AS P ON P.CategoryID = C.CategoryID
GROUP BY C.CategoryName, P.CategoryID
HAVING COUNT(P.ProductName) > 5

-- 12.  Find suppliers with an average product price above 50.

SELECT S.CompanyName, P.SupplierID, AVG(UnitPrice) as AvgProductPrice
FROM Products AS P
JOIN Suppliers AS S ON S.SupplierID = P.SupplierID
GROUP BY S.CompanyName, P.SupplierID
HAVING AVG(UnitPrice) > 50
-- alteratively, if you do not require Supplier's CompanyName, you can avoid JOIN

-- 13. Find customers who have placed more than 10 orders.

SELECT CustomerID, COUNT(*) AS OrdersPerCustomer
FROM Orders
GROUP BY CustomerID
HAVING COUNT(CustomerID) > 10

-- 14. Find products (ProductName) with total sales greater than $10,000.

SELECT P.ProductName, O.ProductID, SUM(O.UnitPrice * O.Quantity) as TotalSales
FROM [Order Details] AS O
JOIN Products AS P ON P.ProductID = O.ProductID
GROUP BY P.ProductName, O.ProductID
HAVING SUM(O.UnitPrice * O.Quantity) > 10000

-- 15. Find employees with more than 60 orders handled.

SELECT Employees.FirstName, 
	   Employees.LastName, 
	   Orders.EmployeeID, 
	   COUNT(Orders.EmployeeID) AS OrdersHandled
FROM Employees
JOIN Orders ON Orders.EmployeeID = Employees.EmployeeID
GROUP BY Employees.FirstName, Employees.LastName, Orders.EmployeeID
HAVING COUNT(Orders.EmployeeID) > 60

-- 16. Find the total number of products and their average price.

SELECT COUNT(*) AS TotalProducts, AVG(UnitPrice) AS AvgProductPrice
FROM Products

-- 17. Find the total orders and average freight per customer.

SELECT COUNT(*) as TotalOrders, AVG(Freight) as AvgFreightPerCustomer
FROM Orders

-- 18. Find the total revenue, minimum, and maximum sales per order.

SELECT SUM(UnitPrice * Quantity) AS TotalRevanue, 
	   MIN(UnitPrice * Quantity) AS MinSalesPerOrder, 
	   MAX(UnitPrice * Quantity) AS MaxSalesPerOrder
FROM [Order Details]

-- 19. Count the number of unique customers.

SELECT COUNT(DISTINCT(CustomerID)) AS UniqueCustomers
FROM Orders

-- 20. Count the number of unique products sold.

SELECT COUNT(DISTINCT(ProductID)) as UniqueProducts
FROM [Order Details]

-- 21. Find the total freight for orders shipped to Germany.

SELECT SUM(Freight) as TotalFreightCostGermany
FROM Orders
WHERE ShipCountry = 'Germany'

-- 22. Find the average order value for orders placed in 1997.

SELECT AVG(OS.UnitPrice * OS.Quantity) AS AvgOrderValue
FROM Orders as O
JOIN [Order Details] as OS on OS.OrderID = O.OrderID
WHERE YEAR(O.OrderDate) = '1997'

-- 23. Find the total revenue for products priced above 20.

SELECT SUM(UnitPrice * Quantity) as TotalRevenue
FROM [Order Details]
WHERE UnitPrice > 20

-- 24. Find the total revenue generated per category.

SELECT C.CategoryName, SUM(OD.UnitPrice * OD.Quantity) AS TotalRevenue
FROM [Order Details] AS OD
JOIN Products AS P ON P.ProductID = OD.ProductID
JOIN Categories AS C ON C.CategoryID = P.CategoryID
GROUP BY C.CategoryName

-- 25. Find the total orders placed by each customer in Germany.

SELECT C.CustomerID, COUNT(O.CustomerID) AS OrderCount
FROM Orders AS O
JOIN Customers AS C ON C.CustomerID = O.CustomerID
WHERE C.Country = 'Germany'
GROUP BY C.CustomerID

-- 26. Find the top 3 most frequently ordered products.

SELECT TOP 3 ProductID, (COUNT(ProductID)) AS Top3Products
FROM [Order Details]
GROUP BY ProductID
ORDER BY Top3Products DESC

-- additionally, fetch ProductName from Products

SELECT TOP 3 OD.ProductID, P.ProductName, (COUNT(OD.ProductID)) AS Top3Products
FROM [Order Details] AS OD
JOIN Products AS P ON P.ProductID = OD.ProductID
GROUP BY OD.ProductID, P.ProductName
ORDER BY Top3Products DESC

-- 27. Find the month with the highest number of orders.

SELECT TOP 1 MONTH(OrderDate) AS [Month], COUNT(*) AS MonthlyOrders
FROM Orders
GROUP BY MONTH(OrderDate)
ORDER BY MonthlyOrders DESC


-- 28. Calculate the percentage of total sales per product.

SELECT ProductID, 
	   SUM(UnitPrice * Quantity) AS ProductSales, 
	   SUM(UnitPrice * Quantity) * 100 / (SELECT SUM(UnitPrice * Quantity) as TotalSales FROM [Order Details]) AS SalesPercentage
FROM [Order Details]
GROUP BY ProductID
ORDER BY SalesPercentage DESC

-- additionally, add ProductName from Products

SELECT OD.ProductID, 
	   P.ProductName,
	   SUM(OD.UnitPrice * OD.Quantity) AS ProductSales, 
	   SUM(OD.UnitPrice * OD.Quantity) * 100 / (SELECT SUM(UnitPrice * Quantity) FROM [Order Details]) AS SalesPercentage

FROM [Order Details] AS OD
JOIN Products AS P ON P.ProductID = OD.ProductID
GROUP BY OD.ProductID, P.ProductName
ORDER BY SalesPercentage DESC

-- 29. Find products priced above the average price.

SELECT ProductName, ProductID, UnitPrice
FROM Products
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM Products)

-- 30. Find customers with orders totaling above $5,000.

SELECT CustomerID, SUM(UnitPrice * Quantity) AS TotalSpent 
FROM [Order Details] OD 
JOIN Orders O ON OD.OrderID = O.OrderID 
GROUP BY CustomerID 
HAVING SUM(UnitPrice * Quantity) > 5000

-- HAPPY PRACTICING!!



