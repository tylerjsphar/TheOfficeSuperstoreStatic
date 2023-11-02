-- Products
-- CREATE
INSERT INTO Products(productName, description, unitPrice, quantityInStock, supplierID, categoryID)
VALUES (:productName, :description, :unitPrice, :quantityInStock, :supplierID, :categoryID);

-- SELECT
SELECT * FROM Products WHERE productID = :productID;

-- No DELETE or UPDATE operation provided for Products.

-- Customers
-- CREATE
INSERT INTO Customers(firstName, lastName, email, phone, address)
VALUES (:firstName, :lastName, :email, :phone, :address);

-- SELECT
SELECT * FROM Customers WHERE customerID = :customerID;

-- No DELETE or UPDATE operations provided for Customers.

-- SalesOrders
-- CREATE
INSERT INTO SalesOrders(orderDate, customerID)
VALUES (:orderDate, :customerID);

-- SELECT
SELECT * FROM SalesOrders WHERE orderID = :orderID;

-- No DELETE or UPDATE operations provided for SalesOrders.

-- Suppliers
-- CREATE
INSERT INTO Suppliers(supplierName, contactName, email, phone, address)
VALUES (:supplierName, :contactName, :email, :phone, :address);

-- SELECT
SELECT * FROM Suppliers WHERE supplierID = :supplierID;

-- No DELETE or UPDATE operations provided for Suppliers.

-- ProductSales (Many-to-Many relationship)
-- CREATE
INSERT INTO ProductSales(productID, orderID, quantitySold, salePrice)
VALUES (:productID, :orderID, :quantitySold, :salePrice);

-- SELECT
SELECT * FROM ProductSales WHERE productSaleID = :productSaleID;

-- DELETE
DELETE FROM ProductSales WHERE productSaleID = :productSaleID;

-- UPDATE
UPDATE ProductSales
SET productID = :productID, orderID = :orderID, quantitySold = :quantitySold, salePrice = :salePrice
WHERE productSaleID = :productSaleID;

-- ProductCategories
-- CREATE
INSERT INTO ProductCategories(category)
VALUES (:category);

-- SELECT
SELECT * FROM ProductCategories WHERE categoryID = :categoryID;

-- No DELETE or UPDATE operations provided for ProductCategories.
