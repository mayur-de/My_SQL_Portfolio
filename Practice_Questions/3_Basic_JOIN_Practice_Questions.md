> # **3. Basic JOIN Practice Questions**

- This file contains **25 Basic JOIN** practice questions using the Northwind dataset.
- **Dataset:**
  - Access `/Dataset` folder in the respository.
  - Use `instnwnd (Azure SQL Database)`, a `.sql` file.
  - Create a database.
  - Run the script in Microsoft SQL Server.
- The questions are solved in `3_Basic_JOIN.sql` file.
- **Solutions:** [3_Basic_JOIN.sql](https://github.com/mayur-de/My_SQL_Portfolio/blob/1839077e66e65b589efac4f98b96a4f11cd3e4ab/3_Basic_JOIN.sql)

> # **Questions**

> ## **1. INNER JOIN**

### 1. **Retrieve a list of all orders along with their corresponding customers' names.**  
Hint: Use `Orders` and `Customers` tables.

### 2. **Fetch product names and their associated categories.**  
Hint: Use `Products` and `Categories` tables.

### 3. **Display order details (Order ID, Product Name, Quantity) by joining the Orders and Order Details tables.**  
Hint: Use `Orders`, `Order Details`, and `Products` tables.

### 4. **Show a list of employee Name (FirstName, LastName) along with the territories they manage.**  
Hint: Use `Employees` and `EmployeeTerritories` tables.

### 5. **Find all suppliers and the products they supply, including the product price.**  
Hint: Use `Suppliers` and `Products` tables.

> ## **2. Left Join (LEFT OUTER JOIN)**

### 6. **Retrieve a list of all customers (CustomerID, CompanyName) with OrderCount including those who haven’t placed any orders.**  
Hint: Use `Customers` and `Orders` tables.

### 7. **Display all products (ProductID, ProductName) along with their supplier names, ensuring that products without suppliers are included.**  
Hint: Use `Products` and `Suppliers` tables.

### 8. **Show all employees and their corresponding orders, including employees who haven’t managed any orders.**  
Hint: Use `Employees` and `Orders` tables.

### 9. **List all categories and their associated products, ensuring that categories without products are shown.**  
Hint: Use `Categories` and `Products` tables.

### 10. **Retrieve all orders along with their associated shippers, even if the shipper information is missing.**  
Hint: Use `Orders` and `Shippers` tables.

> ## **3. Right Join**

### 11. **List all shippers and their associated orders, ensuring all shippers are included even if they have no orders.**  
Hint: Use `Shippers` and `Orders` tables.

### 12. **Retrieve all products and their suppliers, ensuring that all suppliers are included even if they have no products.**  
Hint: Use `Products` and `Suppliers` tables.

### 13. **Display all employees and the territories they manage, ensuring that all employees are listed even if they manage no territory.**  
Hint: Use `Employees`, `EmployeeTerritories`, and `Territories` tables.

### 14. **Retrieve all customers and their orders, ensuring that all customers are included even if they haven’t placed an order.**  
Hint: Use `Customers` and `Orders` tables.

### 15. **List all categories and their products, ensuring that all categories are included even if they have no products.**  
Hint: Use `Categories` and `Products` tables.

> ## 4. **Full Outer Join**

### 16. **Fetch a list of all products and their suppliers, ensuring that all products and suppliers are included, even if they don’t have a match.**  
Hint: Use `Products` and `Suppliers` tables.

### 17. **Display all customers and their orders, ensuring customers without orders and orders without customers are shown.**  
Hint: Use `Customers` and `Orders` tables.

### 18. **Show all employees and their corresponding territories, including employees without territories and territories without employees.**  
Hint: Use `Employees`, `EmployeeTerritories`, and `Territories` tables.

### 19. **Retrieve all orders and their shippers, ensuring that orders without shippers and shippers without orders are included.**  
Hint: Use `Orders` and `Shippers` tables.

### 20. **List all categories and their products, ensuring all categories and products are included, even if they don’t have a match.**  
Hint: Use `Categories` and `Products` tables.

## **5. Joining Multiple Tables and Advanced Examples**

### 21. **Retrieve a list of orders along with customer names, shipper names, and the total freight cost of each order.**  
Hint: Use `Orders`, `Customers`, and `Shippers` tables.

### 22. **Display all products, their categories, suppliers, and the number of units in stock for each product.**  
Hint: Use `Products`, `Categories`, and `Suppliers` tables.

### 23. **Show a list of employees, their territories, the regions they manage, and the number of territories assigned to each employee.**  
Hint: Use `Employees`, `EmployeeTerritories`, `Territories`, and `Region` tables.

### 24. **Retrieve a list of orders, including the customer name, product name, quantity ordered, and the total price for each item in the order, ensuring all orders and products are included even if they don’t have matches.**  
Hint: Use `Orders`, `Customers`, `Order Details`, and `Products` tables.

### 25. **Display all products along with their supplier names and the categories they belong to.**  
Hint: Use `Suppliers`, `Products`, and `Categories` tables.

-- Happy Querying!! ---
