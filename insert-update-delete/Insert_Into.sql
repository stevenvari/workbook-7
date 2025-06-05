-- 1. Add a new supplier.
INSERT INTO suppliers  (companyName, postalCode)
VALUES ("Microsoft", 98052);


-- insert software category
insert into categories (CategoryName, Description)
values ('Software', 'Software products for the enterprise.');

-- 2. Add a new product provided by that supplier
INSERT INTO Products (ProductName, SupplierID, CategoryID, UnitPrice)
VALUES ("Microsoft Office 365", 30,9,99.99);

-- 3. List all products and their suppliers.
select *
from products
inner join suppliers on products.SupplierID = suppliers.SupplierID;

-- 4. Raise the price of your new product by 15%.
update products
set UnitPrice = UnitPrice * 1.15
where ProductID = 78;
-- 5. List the products and prices of all products from that supplier.
select CompanyName, ProductID, ProductName, UnitPrice
from products
join suppliers on products.SupplierID = suppliers.SupplierID
where CompanyName = "Microsoft";
-- 6. Delete the new product.
delete from products
where ProductName = "Microsoft office 365";
-- 7. Delete the new supplier.
delete from suppliers
where CompanyName = "Microsoft";
-- 8. List all products.
select *
from products;
-- 9. List all suppliers.
select *
from suppliers;