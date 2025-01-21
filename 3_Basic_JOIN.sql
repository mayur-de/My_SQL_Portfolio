-- 3. Basic Joins
--================

-- Use NorthWind Dataset
USE NorthWind_Commerce

-- 1. INNER JOIN

-- 1. Retrieve a list of all orders along with their corresponding customers' names.
-- (Hint: Instead of fetching all columns from Orders, get key columns)

SELECT  O.OrderID, O.OrderDate, C.CompanyName
FROM Orders AS O
JOIN Customers AS C ON C.CustomerID = O.CustomerID

-- 2. Fetch product names and their associated categories.

SELECT C.CategoryName,P.ProductName
FROM Products AS P
JOIN Categories AS C ON C.CategoryID = P.CategoryID
ORDER BY C.CategoryName, P.ProductName

-- 3. Display order details (Order ID, Product Name, Quantity) by joining the Orders and Order Details tables.

SELECT O.OrderID, P.ProductName, OD.Quantity
FROM Orders AS O
JOIN [Order Details] AS OD ON OD.OrderID = O.OrderID
JOIN Products AS P ON P.ProductID = OD.ProductID

-- 4. Show a list of employee Name (FirstName, LastName) along with the territories they manage.

SELECT E.FirstName, E.LastName, ET.TerritoryID
FROM Employees AS E
JOIN EmployeeTerritories AS ET ON ET.EmployeeID = E.EmployeeID
ORDER BY E.FirstName, E.LastName

-- 5. Find all suppliers and the products they supply, including the product price.

SELECT S.CompanyName, P.ProductName, P.UnitPrice
FROM Suppliers AS S
JOIN Products AS P ON P.SupplierID = S.SupplierID

-- 2. Left Join (LEFT OUTER JOIN)
-- In a LEFT JOIN, the first table in the query (before the LEFT JOIN keyword) is referred to as the left table, 
-- and the second table (after the LEFT JOIN keyword) is referred to as the right table. 

-- 6. Retrieve a list of all customers (CustomerID, CompanyName) with OrderCount including those who haven’t placed any orders.

SELECT C.CustomerID, C.CompanyName, COUNT(O.OrderID) as OrderCount
FROM Customers AS C
LEFT JOIN Orders AS O ON O.CustomerID = C.CustomerID
GROUP BY C.CustomerID, C.CompanyName
ORDER BY OrderCount

-- 7. Display all products (ProductID, ProductName) along with their supplier names, ensuring that products without suppliers are included.
-- Hint: LEFT table will be Products

SELECT P.ProductName, S.SupplierID, S.CompanyName
FROM Products AS P
LEFT JOIN Suppliers AS S ON S.SupplierID = P.SupplierID

-- 8. Show all employees and their corresponding orders, including employees who haven’t managed any orders.

SELECT E.EmployeeID, E.FirstName, E.LastName, O.*
FROM Employees AS E
LEFT JOIN Orders AS O ON O.EmployeeID = E.EmployeeID
ORDER BY E.EmployeeID

-- 9. List all categories and their associated products, ensuring that categories without products are shown.

SELECT C.CategoryName, P.ProductName
FROM Categories AS C
LEFT JOIN Products AS P ON P.CategoryID = C.CategoryID
ORDER BY C.CategoryName

-- 10. Retrieve all orders along with their associated shippers, even if the shipper information is missing.
-- (Hint: Common table is ShipperID and ShipVia.)

SELECT O.*, SH.CompanyName
FROM Orders AS O
LEFT JOIN Shippers AS SH ON SH.ShipperID = O.ShipVia

-- 3. Right Join (RIGHT OUTER JOIN)
-- In a RIGHT JOIN (RIGHT OUTER JOIN), the table mentioned after the RIGHT JOIN keyword is the right table.
-- While the table mentioned before the RIGHT JOIN keyword is the left table.
-- Returns all rows from the right table (even if there are no matches in the left table).
-- Rows from the left table are included only if there is a match otherwise, NULL is returned for left table columns.

-- 11. List all shippers and their associated orders, ensuring all shippers are included even if they have no orders.

SELECT S.ShipperID, S.CompanyName AS ShipperName, O.OrderID, O.OrderDate
FROM Orders AS O
RIGHT JOIN Shippers AS S ON S.ShipperID = O.ShipVia
ORDER BY S.CompanyName

-- 12. Retrieve all products and their suppliers, ensuring that all suppliers are included even if they have no products.

SELECT S.SupplierID, S.CompanyName, P.ProductName
FROM Products AS P
RIGHT JOIN Suppliers AS S ON S.SupplierID = P.SupplierID
ORDER BY S.CompanyName

-- 13. Display all employees and the territories they manage, ensuring that all employees are listed even if they manage no territory.

SELECT E.EmployeeID, E.FirstName, E.LastName, T.TerritoryDescription
FROM EmployeeTerritories AS ET
RIGHT JOIN Employees AS E ON E.EmployeeID = ET.EmployeeID
LEFT JOIN Territories AS T ON ET.TerritoryID = T.TerritoryID
ORDER BY E.FirstName

-- 14. Retrieve all customers and their orders, ensuring that all customers are included even if they haven’t placed an order.

SELECT C.CustomerID, C.CompanyName, O.OrderID, O.OrderDate
FROM Orders AS O
RIGHT JOIN Customers AS C ON C.CustomerID = O.CustomerID
ORDER BY C.CompanyName

-- 15. List all categories and their products, ensuring that all categories are included even if they have no products.

SELECT C.CategoryID, C.CategoryName, P.ProductName
FROM Products AS P
RIGHT JOIN Categories AS C ON C.CategoryID = P.CategoryID
ORDER BY C.CategoryName

-- 4. Full Outer Join (FULL OUTER JOIN)
-- Combines the results of a LEFT JOIN and a RIGHT JOIN.
-- It returns all rows from both tables, including the unmatched rows.

-- 16. Fetch a list of all products and their suppliers, ensuring that all products and suppliers are included, even if they don’t have a match.

SELECT P.ProductID, P.ProductName, S.SupplierID, S.CompanyName
FROM Products AS P
FULL OUTER JOIN Suppliers AS S ON P.SupplierID = S.SupplierID
ORDER BY P.ProductID, S.SupplierID

-- 17. Display all customers and their orders, ensuring customers without orders and orders without customers are shown.

SELECT C.CustomerID, C.CompanyName, O.OrderID, O.OrderDate
FROM Customers AS C
FULL OUTER JOIN Orders AS O ON C.CustomerID = O.CustomerID
ORDER BY C.CustomerID, O.OrderID

-- 18. Show all employees and their corresponding territories, including employees without territories and territories without employees.

SELECT E.EmployeeID, E.FirstName, E.LastName, T.TerritoryID, T.TerritoryDescription
FROM Employees AS E
FULL OUTER JOIN EmployeeTerritories AS ET ON E.EmployeeID = ET.EmployeeID
FULL OUTER JOIN Territories AS T ON ET.TerritoryID = T.TerritoryID
ORDER BY E.EmployeeID, T.TerritoryID

-- 19. Retrieve all orders and their shippers, ensuring that orders without shippers and shippers without orders are included.

SELECT O.OrderID, O.OrderDate, S.ShipperID, S.CompanyName AS ShipperName
FROM Orders AS O
FULL OUTER JOIN Shippers AS S ON O.ShipVia = S.ShipperID
ORDER BY O.OrderID, S.ShipperID

-- 20. List all categories and their products, ensuring all categories and products are included, even if they don’t have a match.

SELECT C.CategoryID, C.CategoryName, P.ProductID, P.ProductName
FROM Categories AS C
FULL OUTER JOIN Products AS P ON C.CategoryID = P.CategoryID
ORDER BY C.CategoryID, P.ProductID

-- 5. Joining Multiple Tables and Advanced Examples

-- 21. Retrieve a list of orders along with customer names, shipper names, and the total freight cost of each order.

SELECT O.OrderID, C.CompanyName AS CustomerName, S.CompanyName AS ShipperName, O.Freight AS TotalFreightCost
FROM Orders AS O
INNER JOIN Customers AS C ON O.CustomerID = C.CustomerID
INNER JOIN Shippers AS S ON O.ShipVia = S.ShipperID
WHERE O.Freight > 50 
ORDER BY O.Freight DESC

-- 22. Display all products, their categories, suppliers, and the number of units in stock for each product.

SELECT P.ProductID, P.ProductName, C.CategoryName, S.CompanyName AS SupplierName, P.UnitsInStock
FROM Products AS P
INNER JOIN Categories AS C ON P.CategoryID = C.CategoryID
INNER JOIN Suppliers AS S ON P.SupplierID = S.SupplierID
WHERE P.UnitsInStock > 0 
ORDER BY P.UnitsInStock DESC

-- 23. Show a list of employees, their territories, the regions they manage, and the number of territories assigned to each employee.

SELECT E.EmployeeID, CONCAT(E.FirstName, ' ', E.LastName) AS EmployeeName,
       T.TerritoryDescription, R.RegionDescription, 
	   COUNT(ET.TerritoryID) OVER(PARTITION BY E.EmployeeID) AS TotalTerritories

FROM Employees AS E
INNER JOIN EmployeeTerritories AS ET ON E.EmployeeID = ET.EmployeeID
INNER JOIN Territories AS T ON ET.TerritoryID = T.TerritoryID
INNER JOIN Region AS R ON T.RegionID = R.RegionID
ORDER BY TotalTerritories DESC

-- 24. Retrieve a list of orders, including the customer name, product name, quantity ordered, and the total price for each item in the order, ensuring all orders and products are included even if they don’t have matches.

SELECT O.OrderID, C.CompanyName AS CustomerName, P.ProductName, OD.Quantity, (OD.Quantity * OD.UnitPrice) AS TotalPrice
FROM Orders AS O
LEFT JOIN Customers AS C ON O.CustomerID = C.CustomerID
LEFT JOIN [Order Details] AS OD ON O.OrderID = OD.OrderID
LEFT JOIN Products AS P ON OD.ProductID = P.ProductID
ORDER BY O.OrderID

-- 25. Display all products along with their supplier names and the categories they belong to.

SELECT P.ProductID, P.ProductName, S.CompanyName AS SupplierName, C.CategoryName, (P.UnitsInStock * P.UnitPrice) AS TotalStockValue
FROM Suppliers AS S
FULL OUTER JOIN Products AS P ON S.SupplierID = P.SupplierID
FULL OUTER JOIN Categories AS C ON P.CategoryID = C.CategoryID
ORDER BY S.CompanyName, C.CategoryName
