-- 1. How many suppliers are there? Use a query!
SELECT count(*)
FROM suppliers;
-- 2. What is the sum of all the employee's salaries?
SELECT sum(Salary)  
FROM employees;
-- 3. What is the price of the cheapest item that Northwind sells?
SELECT min(UnitPrice)
FROM products;
-- 4. What is the average price of items that Northwind sells?
SELECT avg(UnitPrice)
FROM products;
-- 5. What is the price of the most expensive item that Northwind sells?
SELECT max(unitPrice)
FROM products;
-- 6. What is the supplier ID of each supplier and the number of items they
-- supply? You can answer this query by only looking at the Products table.
SELECT supplierID
FROM products;
-- 7. What is the category ID of each category and the average price of each item
-- in the category? You can answer this query by only looking at the Products
-- table.
SELECT avg(UnitPrice), CategoryID
FROM products
group by CategoryID;

-- 8. For suppliers that provide at least 5 items to Northwind, what is the
-- supplier ID of each supplier and the number of items they supply? You
-- can answer this query by only looking at the Products table.
SELECT count(ProductID) as product_count, SupplierID
from products
group by SupplierID
 having product_count >= 5;
-- 9. List the product id, product name, and inventory value (calculated by
-- multiplying unit price by the number of units on hand). Sort the results in
-- descending order by value. If two or more have the same value, order by
-- product name


    