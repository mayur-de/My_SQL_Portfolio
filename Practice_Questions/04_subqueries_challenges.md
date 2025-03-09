# **04. Subqueries**

- The following questions can be solved using the **Northwind** dataset.
- To set up the database in MS SQL Server, use the [`instnwnd.sql`](https://github.com/mayur-de/My_SQL_Portfolio/blob/1c111be7a93d6c07b3bb2d844c94e603566849ec/Databases/instnwnd%20(Azure%20SQL%20Database).sql) script located in the [`/Databases`](https://github.com/mayur-de/My_SQL_Portfolio/tree/1c111be7a93d6c07b3bb2d844c94e603566849ec/Databases) folder.
- Ensure that the **Northwind database** is properly installed before attempting the queries.

#### 1. Find the product with the highest unit price.
  - **Hint:** Use table `Products` (columns: `ProductName`, `UnitPrice`).

#### 2. Retrieve the name of the employee with the earliest hire date.
  - **Hint:** Use table `Employees` (columns: `FirstName`, `LastName`, `HireDate`).

#### 3. List products that are more expensive than the average unit price.
  - **Hint:** Use table `Products` (columns: `ProductName`, `UnitPrice`).

#### 4. Find the order that has the highest freight charge.
  - **Hint:** Use table `Orders` (columns: `OrderID`, `Freight`).

#### 5. Identify the supplier who supplies the most expensive product.
  - **Hint:** Use table `Products` (columns: `SupplierID`, `UnitPrice`).

#### 6. Find the employee who handled the order with the highest total order value.
  - **Hint:** Use tables `Employees`, `Orders`, and `OrderDetails` (columns: `EmployeeID`, `FirstName`, `LastName`, `OrderID`, `UnitPrice`, `Quantity`).

#### 7. List all products supplied by suppliers in Germany.
  - **Hint:** Use tables `Products`, `Suppliers` (columns: `ProductName`, `SupplierID`, `Country`).

#### 8. Find all customers who have NOT placed orders.
  - **Hint:** Use table `Orders` (column: `CustomerID`).

#### 9. Retrieve the names of employees who handled orders with freight charges above $500.
  - **Hint:** Use tables `Employees`, `Orders` (columns: `EmployeeID`, `FirstName`, `LastName`, `Freight`).

#### 10. Find the products that are cheaper than the cheapest product in the "Beverages" category.
  - **Hint:** Use tables `Products`, `Categories` (columns: `ProductName`, `UnitPrice`, `CategoryID`, `CategoryName`).

#### 11. List customers who placed orders in 1996 but not in 1997.
  - **Hint:** Use table `Orders` (columns: `CustomerID`, `OrderDate`).

#### 12. Retrieve the names of products that are not supplied by any supplier from the USA.
  - **Hint:** Use tables `Products`, `Suppliers` (columns: `ProductName`, `SupplierID`, `Country`).

#### 13. Find all products that are more expensive than the average price of products in their respective category.
  - **Hint:** Use table `Products` (columns: `ProductName`, `UnitPrice`, `CategoryID`).

#### 14. Retrieve the names of employees whose hire date is earlier than the average hire date in their region.
  - **Hint:** Use table `Employees` (columns: `FirstName`, `LastName`, `HireDate`, `Region`).

#### 15. List all orders where the freight charge is higher than the average freight charge for orders from the same country.
  - **Hint:** Use table `Orders` (columns: `OrderID`, `Freight`, `ShipCountry`).

#### 16. Find customers whose total order value exceeds the average total order value of all customers.
  - **Hint:** Use tables `Customers`, `Orders`, `OrderDetails` (columns: `CustomerID`, `CompanyName`, `OrderID`, `UnitPrice`, `Quantity`).

#### 17. Identify suppliers who provide products with prices above the average price of all products they supply.
  - **Hint:** Use table `Products` (columns: `SupplierID`, `UnitPrice`).

#### 18. Retrieve the names of employees who have handled more orders than the average number of orders handled by all employees.
  - **Hint:** Use tables `Employees`, `Orders` (columns: `EmployeeID`, `FirstName`, `LastName`, `OrderID`).

#### 19. Find customers who have placed orders for all products in the "Confections" category.
  - **Hint:** Use tables `Customers`, `Products`, `Categories`, `OrderDetails`, `Orders` (columns: `CustomerID`, `CompanyName`, `ProductID`, `CategoryID`, `CategoryName`, `OrderID`).

#### 20. Retrieve the names of employees who have handled orders for products in every category.
  - **Hint:** Use tables `Employees`, `Products`, `OrderDetails`, `Orders`, `Categories` (columns: `EmployeeID`, `FirstName`, `LastName`, `ProductID`, `CategoryID`, `CategoryName`, `OrderID`).
