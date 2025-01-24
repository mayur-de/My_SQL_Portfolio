-- 4. Subqueries

-- Use Northwind dataset for further queries

USE NorthWind_Commerce

-- 1. Single Row Subquery

-- 1. Find the product with the highest unit price.  
-- Hint: Table and variables to use: Products (use ProductName, UnitPrice).

SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice = (SELECT MAX(UnitPrice) 
				   FROM Products)

-- 2. Retrieve the name of the employee with the earliest hire date.  
-- Hint: Table and variables to use: Employees (use FirstName, LastName, HireDate).

SELECT EmployeeID, FirstName, LastName
FROM Employees
WHERE HireDate =(SELECT MIN(HireDate)
				 FROM Employees)

-- 3. List products that are more expensive than the average unit price.  
-- Hint: Table and variables to use: Products (use ProductName, UnitPrice).

SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice > (SELECT AVG(UnitPrice)
				   FROM Products)

-- 4. Find the order that has the highest freight charge.  
-- Hint: Table and variables to use: Orders (use OrderID, Freight).

SELECT OrderID, Freight
FROM Orders
WHERE Freight = (SELECT MAX(Freight) 
				 FROM Orders)

-- 5. Identify the supplier who supplies the most expensive product.  
-- Hint: Table and variables to use: Products (use SupplierID, UnitPrice).

SELECT SupplierID
FROM Products
WHERE UnitPrice = (SELECT MAX(UnitPrice) 
				   FROM Products)

-- 6. Find the employee who handled the order with the highest total order value.  
-- Hint: Tables and variables to use: Employees (use EmployeeID, FirstName, LastName), Order (use OrderID, EmployeeID), OrderDetails (use OrderID, UnitPrice, Quantity).

SELECT EmployeeID, FirstName, LastName
FROM Employees
WHERE EmployeeID = (SELECT EmployeeID 
					  FROM Orders 
					  WHERE OrderID = (SELECT TOP 1 OrderID 
									   FROM [Order Details] 
									   GROUP BY OrderID 
									   ORDER BY SUM(UnitPrice * Quantity) DESC))

-- 7. List all products supplied by suppliers in Germany.  
-- Hint: Tables and variables to use: Products (use ProductName, SupplierID), Suppliers (use SupplierID, Country).

SELECT SupplierID, ProductName
FROM Products
WHERE SupplierID IN (SELECT SupplierID 
					 FROM Suppliers
					 WHERE Country = 'Germany')

-- 8. Find all customers who have NOT placed orders.  
-- Hint: Table and variables to use: Orders (use CustomerID).

SELECT CustomerID
FROM Customers
WHERE CustomerID NOT IN (SELECT DISTINCT CustomerID
						 FROM Orders)

-- 9. Retrieve the names of employees who handled orders with freight charges above $500.  
-- Hint: Tables and variables to use: Employees (use EmployeeID, FirstName, LastName), Orders (use EmployeeID, Freight).

SELECT EmployeeID, FirstName, LastName
FROM Employees
WHERE EmployeeID IN (SELECT EmployeeID 
					 FROM Orders
					 WHERE Freight > 500)

-- 10. Find the products that are cheaper than the cheapest product in the "Beverages" category.  
-- Hint: Tables and variables to use: Products (use ProductName, UnitPrice, CategoryID), Categories (use CategoryName).

SELECT TOP 1 CategoryID, ProductID, ProductName
FROM Products
WHERE CategoryID = (SELECT CategoryID 
					FROM Categories
					WHERE CategoryName = 'Beverages')
ORDER BY UnitPrice ASC

-- alternatively

SELECT CategoryID, ProductID, ProductName
FROM Products
WHERE UnitPrice = (SELECT MIN(UnitPrice)
				   FROM Products
				   WHERE CategoryID = (SELECT CategoryID
									   FROM Categories
									   WHERE CategoryName = 'Beverages'))

-- 11. List customers who placed orders in 1996 but not in 1997.  
-- Hint: Tables and variables to use: Orders (use CustomerID, OrderDate).

SELECT DISTINCT CustomerID
FROM Orders
WHERE YEAR(OrderDate) = '1996' AND CustomerID NOT IN (SELECT CustomerID
													  FROM Orders
													  WHERE YEAR(OrderDate) = '1997')

-- 12. Retrieve the names of products that are not supplied by any supplier from the USA.  
-- Hint: Tables and variables to use: Products (use ProductName, SupplierID), Suppliers (use SupplierID, Country).

SELECT SupplierID, ProductName
FROM Products
WHERE SupplierID NOT IN (SELECT SupplierID
						 FROM Suppliers
						 WHERE Country = 'USA')


-- Correlated Subqueries


-- 13. Find all products that are more expensive than the average price of products in their respective category.  
-- Hint: Tables and variables to use: Products (use ProductName, UnitPrice, CategoryID).

SELECT ProductName, UnitPrice
FROM Products AS P
WHERE UnitPrice > (SELECT AVG(UNITPRICE)
				   FROM Products
				   WHERE CategoryID = P.CategoryID)

-- 14. Retrieve the names of employees whose hire date is earlier than the average hire date in their region.  
-- Hint: Tables and variables to use: Employees (use FirstName, LastName, HireDate, Region).
-- Hint: Convert Date to Float to get average and convert back to Datetime

SELECT Region, FirstName, LastName
FROM Employees AS E
WHERE HireDate < (SELECT CAST(AVG(CAST(HireDate AS FLOAT)) AS DATETIME)
				  FROM Employees
				  WHERE Region = E.Region)

-- 15. List all orders where the freight charge is higher than the average freight charge for orders from the same country.  
-- Hint: Tables and variables to use: Orders (use OrderID, Freight, ShipCountry).

SELECT OrderID
FROM Orders AS O
WHERE Freight > (SELECT AVG(Freight)
				 FROM Orders
				 WHERE ShipCountry = O.ShipCountry)

-- 16. Find customers whose total order value exceeds the average total order value of all customers.  
-- Hint: Tables and variables to use: Customers (use CustomerID, CompanyName), Orders (use OrderID, CustomerID), OrderDetails (use UnitPrice, Quantity).

SELECT C.CustomerID, C.CompanyName 
FROM Customers AS C
WHERE EXISTS (SELECT 1
			  FROM Orders AS O
			  JOIN [Order Details] AS OD ON O.OrderID = OD.OrderID
			  WHERE O.CustomerID = C.CustomerID
			  GROUP BY O.CustomerID
			  HAVING SUM(OD.UnitPrice * OD.Quantity) > (SELECT AVG(TotalValue) 
														FROM (SELECT SUM(OD.UnitPrice * OD.Quantity) AS TotalValue 
															  FROM Orders AS O 
															  JOIN [Order Details] AS OD ON O.OrderID = OD.OrderID 
															  GROUP BY O.CustomerID) AS SubQuery))

-- 17. Identify suppliers who provide products with prices above the average price of all products they supply.  
-- Hint: Tables and variables to use: Products (use SupplierID, UnitPrice).

SELECT DISTINCT S.SupplierID, S.CompanyName
FROM Suppliers AS S
WHERE EXISTS (SELECT 1 
			  FROM Products AS P
			  WHERE P.SupplierID = S.SupplierID AND P.UnitPrice > (SELECT AVG(UnitPrice) 
																   FROM Products  
																   WHERE SupplierID = S.SupplierID))

-- 18. Retrieve the names of employees who have handled more orders than the average number of orders handled by all employees.  
-- Hint: Tables and variables to use: Employees (use FirstName, LastName), Orders (use OrderID, EmployeeID).

SELECT DISTINCT S.SupplierID, S.CompanyName
FROM Suppliers AS S
WHERE EXISTS (SELECT 1 
			  FROM Products AS P
			  WHERE P.SupplierID = S.SupplierID AND P.UnitPrice > (SELECT AVG(UnitPrice) 
																   FROM Products 
																   WHERE SupplierID = S.SupplierID))

-- 19. Find customers who have placed orders for all products in the "Confections" category.  
-- Hint: Tables and variables to use: Customers (use CustomerID, CompanyName), Products (use ProductID, CategoryID), Categories (use CategoryName), OrderDetails (use OrderID, ProductID), Orders (use CustomerID, OrderID).

SELECT C.CustomerID, C.CompanyName
FROM Customers AS C
WHERE NOT EXISTS (SELECT P.ProductID 
				  FROM Products AS P 
				  JOIN Categories AS CA ON P.CategoryID = CA.CategoryID
				  WHERE CA.CategoryName = 'Confections' AND NOT EXISTS (SELECT 1
																		 FROM Orders AS O
																		 JOIN [Order Details] AS OD ON O.OrderID = OD.OrderID
																		 WHERE O.CustomerID = C.CustomerID AND OD.ProductID = P.ProductID))

-- 20. Retrieve the names of employees who have handled orders for products in every category.  
-- Hint: Tables and variables to use: Employees (use FirstName, LastName), Products (use ProductID, CategoryID), OrderDetails (use ProductID, OrderID), Orders (use EmployeeID, OrderID), Categories (use CategoryName).

SELECT E.EmployeeID, E.FirstName, E.LastName
FROM Employees AS E
WHERE NOT EXISTS (SELECT C.CategoryID
				  FROM Categories AS C
				  WHERE NOT EXISTS (SELECT 1
									FROM Orders AS O
									JOIN [Order Details] AS OD ON O.OrderID = OD.OrderID
									JOIN Products AS P ON OD.ProductID = P.ProductID
									WHERE O.EmployeeID = E.EmployeeID AND P.CategoryID = C.CategoryID))


--- Tough Job!! ---
