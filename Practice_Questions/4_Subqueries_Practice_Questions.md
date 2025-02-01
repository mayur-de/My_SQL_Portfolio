> # **4. Subqueries**

- This file contains **20 SQL SUbqueries** practice questions using the Northwind dataset.
- **Get Started:**
  - Access `/Dataset` folder in the respository.
  - Use `instnwnd (Azure SQL Database)`, a `.sql` file.
  - Create a database.
  - Run the script in Microsoft SQL Server.
- The questions are solved in `4_SubQueries.sql` file.
- **Solutions:** [4_SubQueries.sql](https://github.com/mayur-de/My_SQL_Portfolio/blob/faa07b23eb22e175f2493212d212ddae4cd25fc0/4_SubQueries.sql)

> ## **Questions**

### 1. **Find the product with the highest unit price.**  
**Hint:** Use the `Products` table and focus on `ProductName`, `UnitPrice`.

### 2. **Retrieve the name of the employee with the earliest hire date.**  
**Hint:** Use the `Employees` table and focus on `FirstName`, `LastName`, `HireDate`.

### 3. **List products that are more expensive than the average unit price.**  
**Hint:** Use the `Products` table and focus on `ProductName`, `UnitPrice`.

### 4. **Find the order that has the highest freight charge.**  
**Hint:** Use the `Orders` table and focus on `OrderID`, `Freight`.

### 5. **Identify the supplier who supplies the most expensive product.**  
**Hint:** Use the `Products` table and focus on `SupplierID`, `UnitPrice`.

### 6. **Find the employee who handled the order with the highest total order value.**  
**Hint:** Use the `Employees` table (`EmployeeID`, `FirstName`, `LastName`), `Orders` table (`OrderID`, `EmployeeID`), and `OrderDetails` table (`OrderID`, `UnitPrice`, `Quantity`).

### 7. **List all products supplied by suppliers in Germany.**  
**Hint:** Use the `Products` table (`ProductName`, `SupplierID`) and the `Suppliers` table (`SupplierID`, `Country`).

### 8. **Find all customers who have NOT placed orders.**  
**Hint:** Use the `Customers` table and `Orders` table (`CustomerID`).

### 9. **Retrieve the names of employees who handled orders with freight charges above $500.**  
**Hint:** Use the `Employees` table (`EmployeeID`, `FirstName`, `LastName`) and the `Orders` table (`EmployeeID`, `Freight`).

### 10. **Find the products that are cheaper than the cheapest product in the "Beverages" category.**  
**Hint:** Use the `Products` table (`ProductName`, `UnitPrice`, `CategoryID`) and the `Categories` table (`CategoryName`).

### 11. **List customers who placed orders in 1996 but not in 1997.**  
**Hint:** Use the `Orders` table (`CustomerID`, `OrderDate`).

### 12. **Retrieve the names of products that are not supplied by any supplier from the USA.**  
**Hint:** Use the `Products` table (`ProductName`, `SupplierID`) and the `Suppliers` table (`SupplierID`, `Country`).

### `Correlated Subqueries`

### 13. **Find all products that are more expensive than the average price of products in their respective category.**  
**Hint:** Use the `Products` table (`ProductName`, `UnitPrice`, `CategoryID`).

### 14. **Retrieve the names of employees whose hire date is earlier than the average hire date in their region.**  
**Hint:** Use the `Employees` table (`FirstName`, `LastName`, `HireDate`, `Region`) and convert `HireDate` to a float for calculations.

### 15. **List all orders where the freight charge is higher than the average freight charge for orders from the same country.**  
**Hint:** Use the `Orders` table (`OrderID`, `Freight`, `ShipCountry`).

### 16. **Find customers whose total order value exceeds the average total order value of all customers.**  
**Hint:** Use the `Customers` table (`CustomerID`, `CompanyName`), `Orders` table (`OrderID`, `CustomerID`), and `OrderDetails` table (`UnitPrice`, `Quantity`).

### 17. **Identify suppliers who provide products with prices above the average price of all products they supply.**  
**Hint:** Use the `Products` table (`SupplierID`, `UnitPrice`).

### 18. **Retrieve the names of employees who have handled more orders than the average number of orders handled by all employees.**  
**Hint:** Use the `Employees` table (`FirstName`, `LastName`) and the `Orders` table (`OrderID`, `EmployeeID`).

### 19. **Find customers who have placed orders for all products in the "Confections" category.**  
**Hint:** Use the `Customers` table (`CustomerID`, `CompanyName`), `Products` table (`ProductID`, `CategoryID`), `Categories` table (`CategoryName`), `OrderDetails` table (`OrderID`, `ProductID`), and `Orders` table (`CustomerID`, `OrderID`).

### 20. **Retrieve the names of employees who have handled orders for products in every category.**  
**Hint:** Use the `Employees` table (`FirstName`, `LastName`), `Products` table (`ProductID`, `CategoryID`), `OrderDetails` table (`ProductID`, `OrderID`), `Orders` table (`EmployeeID`, `OrderID`), and `Categories` table (`CategoryName`).

--- Happy Querying :D ---
