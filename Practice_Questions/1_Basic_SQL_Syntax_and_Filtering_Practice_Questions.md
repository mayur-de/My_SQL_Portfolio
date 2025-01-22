> # **1. Basic SQL Syntax and Filtering**

- This file contains **25 SQL Basic Syntax and Filtering** practice questions using the Northwind dataset.
- **Get Started:**
  - Access `/Dataset` folder in the respository.
  - Use `instnwnd (Azure SQL Database)`, a `.sql` file.
  - Create a database.
  - Run the script in Microsoft SQL Server.
- The questions are solved in `1_Basic_SQL_Syntax_and_Filtering.sql` file.
- **Solutions:** [1_Basic_SQL_Syntax_and_Filtering.sql](https://github.com/mayur-de/My_SQL_Portfolio/blob/978d1fd1bf0b88c3d0524a9fb781ddd763525722/1_Basic_SQL_Syntax_and_Filtering.sql)

## Questions

## **1. Basic SQL**  
## **SQL Syntax and Queries**
### 1. Select all columns from the `Customers` table.  
**Hint:** Use the `Customers` table.  

### 2. Select the `CompanyName` and `ContactName` from the `Customers` table.  
**Hint:** Use the `Customers` table.  

### 3. Retrieve all columns from the `Orders` table where the `OrderDate` is in January 1997.  
**Hint:** Use the `Orders` table and filter by date.  

### 4. Select the top 5 customers based on `CustomerID` from the `Customers` table.  
**Hint:** Use the `Customers` table.  

### 5. Fetch the `OrderID`, `CustomerID`, and `OrderDate` from the `Orders` table, sorted by `OrderDate` in ascending order.  
**Hint:** Use the `Orders` table.  

### 6. Retrieve the `EmployeeID`, `FirstName`, and `LastName` from the `Employees` table.  
**Hint:** Use the `Employees` table.  

### 7. Find the `ProductName` and `UnitPrice` of products with a price greater than 20.  
**Hint:** Use the `Products` table.  

### 8. Retrieve the `ProductName`, `QuantityPerUnit`, and `UnitPrice` for products in the "Beverages" category.  
**Hint:** Use the `Products` and `Categories` tables with a subquery.  

### 9. Fetch the first 10 orders from the `Orders` table.  
**Hint:** Use the `Orders` table.  

### 10. Retrieve all columns from the `Employees` table where the `LastName` is "Davolio".  
**Hint:** Use the `Employees` table.  

---

## **2. Filtering and Sorting**  
### 11. Select all orders from the `Orders` table where the `Freight` is greater than 100.  
**Hint:** Use the `Orders` table.  

### 12. Find the products with `ProductName` containing "sild".  
**Hint:** Use the `Products` table.  

### 13. List the names of customers (`ContactName`) from the `Customers` table located in "Germany".  
**Hint:** Use the `Customers` table.  

### 14. Find the `OrderID` and `OrderDate` for orders shipped to "Germany".  
**Hint:** Use the `Orders` table.  

### 15. Retrieve all orders placed between 1st March 1997 and 30th June 1997.  
**Hint:** Use the `Orders` table and filter by date.  

### 16. Select the `ProductName` and `UnitPrice` for products where the `UnitPrice` is between 10 and 50.  
**Hint:** Use the `Products` table.  

### 17. Fetch the `CompanyName` and `Country` of customers from "USA" or "UK".  
**Hint:** Use the `Customers` table.  

### 18. Find customers who have not placed any orders.  
**Hint:** Use the `Customers` table and a subquery on the `Orders` table.  

### 19. Retrieve all orders where the `ShippedDate` is later than the `OrderDate`.  
**Hint:** Use the `Orders` table.  

### 20. Select the `ProductName` and `UnitPrice` for products categorized under "Condiments".  
**Hint:** Use the `Products` and `Categories` tables.  

### 21. List all employees who report to "Andrew Fuller".  
**Hint:** Use the `Employees` table with a subquery.  

### 22. Find all employees who have worked for more than 5 years.  
**Hint:** Use the `Employees` table and filter by `HireDate`.  

### 23. Retrieve the customers whose `ContactName` starts with "A".  
**Hint:** Use the `Customers` table.  

### 24. List the orders that have not been shipped yet (`ShippedDate` is NULL).  
**Hint:** Use the `Orders` table.  

### 25. Select the `ProductName`, `CategoryName`, and `UnitPrice` for products in the "Seafood" category.  
**Hint:** Use the `Products` and `Categories` tables with a `JOIN`.

--- Happy Querying!!! ---
