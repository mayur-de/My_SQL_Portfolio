> # **3. Basic JOIN Questions for SQL Practice**
- This file contains **25 SQL Basic JOIN** practice questions using the Northwind dataset.
- **Dataset:**
  - Access `/Dataset` folder in the repository.
  - Use `instnwnd (Azure SQL Database)`, a `.sql` file.
  - Create a database.
  - Run the script in Microsoft SQL Server.
- The questions are solved in `3_Basic_JOIN.sql` file.
- **Solutions:** [3_Basic_JOIN.sql]()

> ## Questions

> ### 1. **Inner Join Basics**
**Hint:** Use INNER JOIN to combine rows from two or more tables where there is a match in the related columns. This is ideal for fetching only the records with complete data in both tables.

1. Retrieve a list of all orders along with their corresponding customers' names.
   - **Hint:** Use Orders and Customers tables.
2. Fetch product names and their associated categories.
   - **Hint:** Use Products and Categories tables.
3. Display order details (Order ID, Product Name, Quantity) by joining the Orders and Order Details tables.
   - **Hint:** Use Orders and Order Details tables.
4. Show a list of employees along with the territories they manage.
   - **Hint:** Use Employees, EmployeeTerritories, and Territories tables.
5. Find all suppliers and the products they supply, including the product price.
   - **Hint:** Use Suppliers and Products tables.

> ### 2. **Left Join (LEFT OUTER JOIN)**
**Hint:** Use LEFT JOIN to fetch all rows from the left table and the matched rows from the right table. Include rows from the left table even when there is no match.

6. Retrieve a list of all customers, including those who haven’t placed any orders.
   - **Hint:** Use Customers and Orders tables.
7. Display all products along with their supplier names, ensuring that products without suppliers are included.
   - **Hint:** Use Products and Suppliers tables.
8. Show all employees and their corresponding orders, including employees who haven’t managed any orders.
   - **Hint:** Use Employees and Orders tables.
9. List all categories and their associated products, ensuring that categories without products are shown.
   - **Hint:** Use Categories and Products tables.
10. Retrieve all orders along with their associated shippers, even if the shipper information is missing.
   - **Hint:** Use Orders and Shippers tables.

> ### 3. **Right Join (RIGHT OUTER JOIN)**
**Hint:** Use RIGHT JOIN to fetch all rows from the right table and the matched rows from the left table. Include rows from the right table even when there is no match.

11. Retrieve a list of all orders along with their shippers, including shippers with no associated orders.
   - **Hint:** Use Orders and Shippers tables.
12. Display all territories and the employees managing them, ensuring that all employees are listed, even if they don’t manage a territory.
   - **Hint:** Use Territories, EmployeeTerritories, and Employees tables.
13. Show all suppliers along with their products, ensuring that suppliers with no products are included.
   - **Hint:** Use Suppliers and Products tables.
14. List all orders and their details, ensuring that all order details are included, even if the orders table doesn’t have matching entries.
   - **Hint:** Use Orders and Order Details tables.
15. Retrieve all products and their categories, ensuring all categories are included even if no product belongs to them.
   - **Hint:** Use Products and Categories tables.

> ### 4. **Full Outer Join (FULL OUTER JOIN)**
**Hint:** Use FULL OUTER JOIN to fetch all rows from both tables, displaying NULL for unmatched rows. This is useful when you want to include all possible data from both tables.

16. Fetch a list of all products and their suppliers, ensuring that all products and suppliers are included, even if they don’t have a match.
   - **Hint:** Use Products and Suppliers tables.
17. Display all customers and their orders, ensuring customers without orders and orders without customers are shown.
   - **Hint:** Use Customers and Orders tables.
18. Show all employees and their corresponding territories, including employees without territories and territories without employees.
   - **Hint:** Use Employees, EmployeeTerritories, and Territories tables.
19. Retrieve all orders and their shippers, ensuring that orders without shippers and shippers without orders are included.
   - **Hint:** Use Orders and Shippers tables.
20. List all categories and their products, ensuring all categories and products are included, even if they don’t have a match.
   - **Hint:** Use Categories and Products tables.

> ### 5. **Joining Multiple Tables**
**Hint:** Combine multiple JOINs to fetch data spanning across more than two tables. Ensure you understand the relationships between the tables and the keys connecting them.

21. Retrieve a list of orders along with customer names and shipper names.
   - **Hint:** Use Orders, Customers, and Shippers tables.
22. Display all products, their categories, and their suppliers.
   - **Hint:** Use Products, Categories, and Suppliers tables.
23. Show a list of employees, their territories, and the region of those territories.
   - **Hint:** Use Employees, EmployeeTerritories, Territories, and Region tables.
24. Retrieve a list of orders, including the customer name, product name, and quantity ordered.
   - **Hint:** Use Orders, Customers, Order Details, and Products tables.
25. Display all products along with their supplier names and the categories they belong to.
   - **Hint:** Use Products, Suppliers, and Categories tables.

--- Happy Coding!! ---
