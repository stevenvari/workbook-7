use northwind;
-- 1. What is the name of the table that holds the items Northwind sells?
-- products
-- 2. Write a query to list the product id, product name, and unit price of every
-- product.
SELECT productID, productName, UnitPrice
FROM products;
-- 3. Write a query to list the product id, product name, and unit price of every
-- product. Except this time, order then in ascending order by price.
SELECT productID, productName, UnitPrice
FROM products
ORDER BY unitPrice;
-- 4. What are the products that we carry where the unit price is $7.50 or less?
-- 2-34
SELECT productName, UnitPrice
FROM products
WHERE UnitPrice <= 7.50;
-- 5. What are the products that we carry where we have at least 100 units on
-- hand? Order them in descending order by price.
SELECT ProductID,ProductName ,UnitsInStock, UnitPrice
FROM products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice desc;

-- 6. What are the products that we carry where we have at least 100 units on
-- hand? Order them in descending order by price. If two or more have the
-- same price, list those in ascending order by product name.
SELECT productID ,productName, UnitsInStock, UnitPrice
FROM products
WHERE UnitsInStock >= 50
ORDER BY UnitPrice desc;

-- 7. What are the products that we carry where we have no units on hand, but 1
-- or more units of them on backorder? Order them by product name.
SELECT productID ,productName, UnitsInStock, UnitPrice, UnitsOnOrder
FROM products
WHERE UnitsInStock = 0
AND UnitsOnOrder > 0
ORDER BY ProductName;
-- 8. What is the name of the table that holds the types (categories) of the items
-- Northwind sells?
-- categories
-- 9. Write a query that lists all of the columns and all of the rows of the
-- categories table? What is the category id of seafood?
SELECT *
FROM categories;
-- The category id for seafood is 8
-- 10. Examine the Products table. How does it identify the type (category) of
-- each item sold? Write a query to list all of the seafood items we carry.
SELECT *
FROM products
WHERE CategoryID = 8;

-- 11. What are the first and last names of all of the Northwind employees?
SELECT firstName, LastName
FROM employees;
-- 12. What employees have "manager" in their titles?
SELECT firstName, LastName, title
FROM employees
WHERE Title like "%Manager";
-- 13. List the distinct job titles in employees.
SELECT distinct Title
FROM employees;

-- 14. What employees have a salary that is between $200 0 and $2500?
SELECT EmployeeID, FirstName, LastName, Salary
FROM employees
WHERE Salary >=2000 and Salary <= 2500;
-- 15. List all of the information about all of Northwind's suppliers.
select *
from suppliers;
-- 16. Examine the Products table. How do you know what supplier supplies
-- each product? Write a query to list all of the items that "Tokyo Traders"
-- supplies to Northwind

select SupplierID, CompanyName
FROM suppliers
where CompanyName = "Tokyo Traders";

select ProductName
from products
where SupplierID = 4;
