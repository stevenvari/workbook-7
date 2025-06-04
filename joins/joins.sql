-- 1. List the product id, product name, unit price and category name of all
-- products. Order by category name and within that, by product name.
SELECT products.ProductID, products.productName, products.unitPrice, categories.CategoryName
FROM products
Inner join categories on products.CategoryID = categories.CategoryID
order by CategoryName;
-- 2. List the product id, product name, unit price and supplier name of all
-- products that cost more than $75. Order by product name.
select products.ProductID, products.ProductName, products.UnitPrice, suppliers.CompanyName
from products
join suppliers on products.SupplierID = suppliers.SupplierID
where UnitPrice > 75
order by ProductName;

-- 3. List the product id, product name, unit price, category name, and supplier
-- name of every product. Order by product name.
select products.ProductID, products.ProductName, products.UnitPrice, suppliers.CompanyName
from products
join suppliers on products.SupplierID = suppliers.SupplierID
join categories on products.CategoryID = categories.CategoryID
order by ProductName;
-- 4. What is the product name(s) and categories of the most expensive
-- products? HINT: Find the max price in a subquery and then use that in
-- your more complex query that joins products with categories.

-- 5. List the order id, ship name, ship address, and shipping company name of
-- every order that shipped to Germany.
select
orders.OrderID,
orders.ShipName,
orders.ShipAddress,
shippers.CompanyName
from orders
join shippers on orders.ShipVia = shippers.ShipperID; 

-- 6. List the order id, order date, ship name, ship address of all orders that
-- ordered "Sasquatch Ale"?

select orders.OrderID, orders.OrderDate, orders.ShipName, orders.ShipAddress, `order details`.OrderID
from orders
join `order details` on orders.OrderID = `order details`.OrderID;
