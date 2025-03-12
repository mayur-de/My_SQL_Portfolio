# **Questionnaire: SQL Basic Joins**

- The following questions can be solved using the **Northwind** dataset.
- To set up the database in MS SQL Server, use the [`instnwnd.sql`](https://github.com/mayur-de/My_SQL_Portfolio/blob/1c111be7a93d6c07b3bb2d844c94e603566849ec/Databases/instnwnd%20(Azure%20SQL%20Database).sql) script located in the [`/Databases`](https://github.com/mayur-de/My_SQL_Portfolio/tree/1c111be7a93d6c07b3bb2d844c94e603566849ec/Databases) folder.
- Ensure that the **Northwind database** is properly installed before attempting the queries.
---

#### 1. Retrieve a list of all orders along with their corresponding customers' names.
  - **Hint:** Use tables `Orders` and `Customers`.

#### 2. Fetch product names and their associated categories.
  - **Hint:** Use tables `Products` and `Categories`.

#### 3. Display order details (Order ID, Product Name, Quantity) by joining the Orders and Order Details tables.
  - **Hint:** Use tables `Orders`, `Order Details`, and `Products`.

#### 4. Show a list of employee names (FirstName, LastName) along with the territories they manage.
  - **Hint:** Use tables `Employees` and `EmployeeTerritories`.

#### 5. Find all suppliers and the products they supply, including the product price.
  - **Hint:** Use tables `Suppliers` and `Products`.

#### 6. Retrieve a list of all customers (CustomerID, CompanyName) with OrderCount including those who haven’t placed any orders.
  - **Hint:** Use tables `Customers` and `Orders`.

#### 7. Display all products (ProductID, ProductName) along with their supplier names, ensuring that products without suppliers are included.
  - **Hint:** Use tables `Products` and `Suppliers`.

#### 8. Show all employees and their corresponding orders, including employees who haven’t managed any orders.
  - **Hint:** Use tables `Employees` and `Orders`.

#### 9. List all categories and their associated products, ensuring that categories without products are shown.
  - **Hint:** Use tables `Categories` and `Products`.

#### 10. Retrieve all orders along with their associated shippers, even if the shipper information is missing.
  - **Hint:** Use tables `Orders` and `Shippers`.

#### 11. List all shippers and their associated orders, ensuring all shippers are included even if they have no orders.
  - **Hint:** Use tables `Shippers` and `Orders`.

#### 12. Retrieve all products and their suppliers, ensuring that all suppliers are included even if they have no products.
  - **Hint:** Use tables `Products` and `Suppliers`.

#### 13. Display all employees and the territories they manage, ensuring that all employees are listed even if they manage no territory.
  - **Hint:** Use tables `Employees`, `EmployeeTerritories`, and `Territories`.

#### 14. Retrieve all customers and their orders, ensuring that all customers are included even if they haven’t placed an order.
  - **Hint:** Use tables `Customers` and `Orders`.

#### 15. List all categories and their products, ensuring that all categories are included even if they have no products.
  - **Hint:** Use tables `Categories` and `Products`.

#### 16. Fetch a list of all products and their suppliers, ensuring that all products and suppliers are included, even if they don’t have a match.
  - **Hint:** Use tables `Products` and `Suppliers`.

#### 17. Display all customers and their orders, ensuring customers without orders and orders without customers are shown.
  - **Hint:** Use tables `Customers` and `Orders`.

#### 18. Show all employees and their corresponding territories, including employees without territories and territories without employees.
  - **Hint:** Use tables `Employees`, `EmployeeTerritories`, and `Territories`.

#### 19. Retrieve all orders and their shippers, ensuring that orders without shippers and shippers without orders are included.
  - **Hint:** Use tables `Orders` and `Shippers`.

#### 20. List all categories and their products, ensuring all categories and products are included, even if they don’t have a match.
  - **Hint:** Use tables `Categories` and `Products`.

#### 21. Retrieve a list of orders along with customer names, shipper names, and the total freight cost of each order.
  - **Hint:** Use tables `Orders`, `Customers`, and `Shippers`.

#### 22. Display all products, their categories, suppliers, and the number of units in stock for each product.
  - **Hint:** Use tables `Products`, `Categories`, and `Suppliers`.

#### 23. Show a list of employees, their territories, the regions they manage, and the number of territories assigned to each employee.
  - **Hint:** Use tables `Employees`, `EmployeeTerritories`, `Territories`, and `Region`.

#### 24. Retrieve a list of orders, including the customer name, product name, quantity ordered, and the total price for each item in the order, ensuring all orders and products are included even if they don’t have matches.
  - **Hint:** Use tables `Orders`, `Customers`, `Order Details`, and `Products`.

#### 25. Display all products along with their supplier names and the categories they belong to.
  - **Hint:** Use tables `Products`, `Suppliers`, and `Categories`.
