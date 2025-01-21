> # 1. Basic SQL Syntax, Filtering and Sorting
- This file contains 25 SQL aggregation practice questions using the Northwind dataset.
- **Dataset:**
  - Access `/Datase`t folder in the respository.
  - Use `instnwnd (Azure SQL Database)`, a `.sql` file.
  - In `Microsoft SQL Server Create a database` and run the script.
- The questions are solved in `1_Basic_SQL_Syntax_and_Filtering` file.
- **Solutions:** [1_Basic_SQL_Syntax_and_Filtering.sql](https://github.com/mayur-de/My_SQL_Portfolio/blob/a2a3c78a319a0940ec76754d4f6466505d293cc4/1_Basic_SQL_Syntax_and_Filtering.sql)

> ## 1. SQL Syntax and Queries

1. **Select all columns from the Customers table.**  
   **Hint:** Focus on `Customers` table and use basic column selection.

2. **Select the CompanyName and ContactName from the Customers table.**  
   **Hint:** Work with `Customers` table and limit columns in selection.

3. **Select all columns from the Orders table where the OrderDate is in January 1997.**  
   **Hint:** Explore `Orders` table and apply a date range filter.

4. **Select the top 5 customers (based on CustomerID) from the Customers table.**  
   **Hint:** Use `Customers` table with sorting and limiting results.

5. **Select the OrderID, CustomerID, and OrderDate from the Orders table. Sort by OrderDate in ascending order.**  
   **Hint:** Utilize `Orders` table and arrange results by date.

6. **Select the EmployeeID, FirstName, and LastName from the Employees table.**  
   **Hint:** Look at `Employees` table and pick specific columns.

7. **Find the ProductName and UnitPrice from the Products table, where the price is greater than 20.**  
   **Hint:** Focus on `Products` table and filter by price.

8. **Select ProductName, QuantityPerUnit, and UnitPrice from the Products table. Only show products that are in the “Beverages” category.**  
   **Hint:** Combine `Products` and `Categories` for category-based filtering.

9. **Select the first 10 orders from the Orders table.**  
   **Hint:** Use `Orders` table and restrict results.

10. **Select all columns from the Employees table where the LastName is "Davolio".**  
    **Hint:** Investigate `Employees` table and search by name.

> ## 2. Filtering and Sorting

11. **Select all orders from the Orders table where the Freight is greater than 100.**  
    **Hint:** Filter `Orders` table by freight value.

12. **Find the products with the ProductName containing "sild" in the Products table.**  
    **Hint:** Check `Products` table and use pattern matching.

13. **List the names of customers "ContactName" from the Customers table located in “Germany”.**  
    **Hint:** Search `Customers` table for specific country.

14. **Find the OrderID and OrderDate from the Orders table for orders shipped to “Germany”.**  
    **Hint:** Use `Orders` table and filter by shipping destination.

15. **Select all orders from the Orders table that were placed between OrderDate 1st March 1997 and 30th June 1997.**  
    **Hint:** Explore `Orders` table and apply range conditions.

16. **Select all ProductName and UnitPrice from the Products table where UnitPrice is between 10 and 50.**  
    **Hint:** Analyze `Products` table with range filters.

17. **Select the CompanyName and Country of customers who are from “USA” or “UK”.**  
    **Hint:** Focus on `Customers` table and check for multiple values.

18. **Find the customers from the Customers table who have not placed an order (use subquery).**  
    **Hint:** Investigate `Customers` table with reference to `Orders`.

19. **Select all orders where the ShippedDate is later than the OrderDate.**  
    **Hint:** Compare shipping and order dates in `Orders` table.

20. **Select ProductName and UnitPrice for products that have “Condiments” in their category (using the Categories table).**  
    **Hint:** Utilize `Products` and `Categories` for category filtering.

21. **List all employees who report to “Andrew Fuller” in the Employees table.**  
    **Hint:** Use `Employees` table and find manager by name.

22. **Find all employees who have worked for more than 5 years using the Employees table (use HireDate).**  
    **Hint:** Check `Employees` table and calculate tenure.

23. **Find the customers whose name starts with “A”.**  
    **Hint:** Use `Customers` table and filter by name pattern.

24. **Find the orders that have not been shipped yet (ShippedDate is NULL).**  
    **Hint:** Investigate `Orders` table for missing dates.

25. **Select the ProductName, CategoryName, and UnitPrice for products in the “Seafood” category.**  
    **Hint:** Join `Products` and `Categories` to locate specific items.

-- Happy Coding!! --
