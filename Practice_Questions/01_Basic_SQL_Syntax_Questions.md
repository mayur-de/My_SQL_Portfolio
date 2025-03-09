# **Questionnaire: Basic SQL Syntax and Filtering**
- The following questions can be solved using the **Northwind** dataset.
- To set up the database in MS SQL Server, use the [`instnwnd.sql`](https://github.com/mayur-de/My_SQL_Portfolio/blob/1c111be7a93d6c07b3bb2d844c94e603566849ec/Databases/instnwnd%20(Azure%20SQL%20Database).sql) script located in the [`/Databases`](https://github.com/mayur-de/My_SQL_Portfolio/tree/1c111be7a93d6c07b3bb2d844c94e603566849ec/Databases) folder.
- Ensure that the **Northwind database** is properly installed before attempting the queries.
---
## **1. SQL Syntax and Queries**

#### 1. Select all columns from the Customers table.
   - **Hint:** Use table `Customers`

#### 2. Select the CompanyName and ContactName from the Customers table.
   - **Hint:** Use table `Customers`

#### 3. Select all columns from the Orders table where the OrderDate is in January 1997.
   - **Hint:** Use table `Orders`

#### 4. Select the top 5 customers (based on CustomerID) from the Customers table.
   - **Hint:** Use table `Customers`

#### 5. Select the OrderID, CustomerID, and OrderDate from the Orders table. Sort by OrderDate in ascending order.
   - **Hint:** Use table `Orders`

#### 6. Select the EmployeeID, FirstName, and LastName from the Employees table.
   - **Hint:** Use table `Employees`

#### 7. Find the ProductName and UnitPrice from the Products table, where the price is greater than 20.
   - **Hint:** Use table `Products`

#### 8. Select ProductName, QuantityPerUnit, and UnitPrice from the Products table. Only show products that are in the “Beverages” category.
   - **Hint:** Use tables `Products`, `Categories`

#### 9. Select the first 10 orders from the Orders table.
  - **Hint:** Use table `Orders`

#### 10. Select all columns from the Employees table where the LastName is "Davolio".
  - **Hint:** Use table `Employees`

## **2. Filtering and Sorting**

#### 11. Select all orders from the Orders table where the Freight is greater than 100.
  - **Hint:** Use table `Orders`

#### 12. Find the products with the ProductName containing "sild" in the Products table.
   - **Hint:** Use table `Products`

#### 13. List the names of customers (ContactName) from the Customers table located in “Germany”.
   - **Hint:** Use table `Customers`

#### 14. Find the OrderID and OrderDate from the Orders table for orders shipped to “Germany”.
  - **Hint:** Use table `Orders`

#### 15. Select all orders from the Orders table that were placed between 1st March 1997 and 30th June 1997.
   - **Hint:** Use table `Orders`

#### 16. Select ProductName and UnitPrice from the Products table where UnitPrice is between 10 and 50.
   - **Hint:** Use table `Products`

#### 17. Select the CompanyName and Country of customers who are from “USA” or “UK”.
   - **Hint:** Use table `Customers`

#### 18. Find the customers from the Customers table who have not placed an order.
   - **Hint:** Use tables `Customers`, `Orders`

#### 19. Select all orders where the ShippedDate is later than the OrderDate.
  - **Hint:** Use table `Orders`

#### 20. Select ProductName and UnitPrice for products that have “Condiments” in their category.
   - **Hint:** Use tables `Products`, `Categories`

#### 21. List all employees who report to “Andrew Fuller” in the Employees table.
   - **Hint:** Use table `Employees`

#### 22. Find all employees who have worked for more than 5 years using the Employees table.
   - **Hint:** Use table `Employees`

#### 23. Find the customers whose name starts with “A”.
   - **Hint:** Use table `Customers`

#### 24. Find the orders that have not been shipped yet.
   - **Hint:** Use table `Orders`

#### 25. Select the ProductName, CategoryName, and UnitPrice for products in the “Seafood” category.
  - **Hint:** Use tables `Products`, `Categories`

--- Happy Querying!---
