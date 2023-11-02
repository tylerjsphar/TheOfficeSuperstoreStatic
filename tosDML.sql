-- Products
-- CREATE
INSERT INTO Products(productName, description, unitPrice, quantityInStock, supplierID, categoryID)
VALUES (:productName, :description, :unitPrice, :quantityInStock, :supplierID, :categoryID);

-- SELECT
SELECT * FROM Products WHERE productID = :productID;

-- DELETE
-- Delete a product and related entries in ProductSales(on delete CASCADE in ProductSales)
DELETE FROM Products
WHERE productID = :productID;

-- Customers
-- CREATE
INSERT INTO Customers(firstName, lastName, email, phone, address)
VALUES (:firstName, :lastName, :email, :phone, :address);

-- SELECT including search feature
SELECT * FROM Customers
WHERE
    (:searchKeyword IS NULL OR
    (LOWER(firstName) LIKE CONCAT('%', LOWER(:searchKeyword), '%') OR
    LOWER(lastName) LIKE CONCAT('%', LOWER(:searchKeyword), '%') OR
    LOWER(email) LIKE CONCAT('%', LOWER(:searchKeyword), '%') OR
    LOWER(phone) LIKE CONCAT('%', LOWER(:searchKeyword), '%') OR
    LOWER(address) LIKE CONCAT('%', LOWER(:searchKeyword), '%')));


-- UPDATE
-- Update a customer
UPDATE Customers
SET firstName = :firstName, lastName = :lastName, email = :email, phone = :phone, address = :address
WHERE customerID = :customerID;

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

-- No DELETE or UPDATE operations provided for ProductSales.

-- ProductCategories
-- CREATE
INSERT INTO ProductCategories(category)
VALUES (:category);

-- SELECT
SELECT * FROM ProductCategories WHERE categoryID = :categoryID;

-- No DELETE or UPDATE operations provided for ProductCategories.
