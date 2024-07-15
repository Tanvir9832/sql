CREATE TABLE Customer (
    customerId INT AUTO_INCREMENT PRIMARY KEY,
    customerName VARCHAR(150),
    customerEmail VARCHAR(150),
    customerContact VARCHAR(150)
);

CREATE TABLE Product (
    productId INT AUTO_INCREMENT PRIMARY KEY,
    productName VARCHAR(150),
    productPrice FLOAT,
    brandName VARCHAR(150)
);

CREATE TABLE Sale (
    saleId INT AUTO_INCREMENT PRIMARY KEY,
    productId INT NOT NULL,
    customerId INT NOT NULL,
    FOREIGN KEY (customerId) REFERENCES Customer(customerId),
    FOREIGN KEY (productId) REFERENCES Product(productId)
);

ALTER TABLE Sale ADD saleDate datetime;

INSERT INTO Customer (customerName, customerEmail, customerContact) VALUES
('John Doe', 'john.doe@example.com', '123-456-7890'),
('Jane Smith', 'jane.smith@example.com', '234-567-8901'),
('Emily Johnson', 'emily.johnson@example.com', '345-678-9012'),
('Michael Brown', 'michael.brown@example.com', '456-789-0123'),
('Sarah Davis', 'sarah.davis@example.com', '567-890-1234'),
('David Wilson', 'david.wilson@example.com', '678-901-2345'),
('Laura Taylor', 'laura.taylor@example.com', '789-012-3456'),
('James Martinez', 'james.martinez@example.com', '890-123-4567'),
('Linda Anderson', 'linda.anderson@example.com', '901-234-5678'),
('Robert Thomas', 'robert.thomas@example.com', '012-345-6789'),
('Patricia Jackson', 'patricia.jackson@example.com', '123-456-7891'),
('Charles White', 'charles.white@example.com', '234-567-8902'),
('Elizabeth Harris', 'elizabeth.harris@example.com', '345-678-9013'),
('George Clark', 'george.clark@example.com', '456-789-0124'),
('Jennifer Lewis', 'jennifer.lewis@example.com', '567-890-1235'),
('Joseph Robinson', 'joseph.robinson@example.com', '678-901-2346'),
('Susan Walker', 'susan.walker@example.com', '789-012-3457'),
('Daniel Hall', 'daniel.hall@example.com', '890-123-4568'),
('Karen Allen', 'karen.allen@example.com', '901-234-5679'),
('Paul Young', 'paul.young@example.com', '012-345-6790');


INSERT INTO Product (productName, productPrice, brandName) VALUES
('Laptop', 999.99, 'BrandA'),
('Smartphone', 599.99, 'BrandB'),
('Tablet', 399.99, 'BrandC'),
('Monitor', 199.99, 'BrandD'),
('Keyboard', 49.99, 'BrandE'),
('Mouse', 29.99, 'BrandF'),
('Headphones', 79.99, 'BrandG'),
('Speaker', 89.99, 'BrandH'),
('Camera', 499.99, 'BrandI'),
('Printer', 149.99, 'BrandJ'),
('Router', 79.99, 'BrandK'),
('Hard Drive', 89.99, 'BrandL'),
('Memory Card', 19.99, 'BrandM'),
('USB Drive', 14.99, 'BrandN'),
('Charger', 24.99, 'BrandO'),
('Smartwatch', 199.99, 'BrandP'),
('Fitness Tracker', 99.99, 'BrandQ'),
('Drone', 299.99, 'BrandR'),
('Game Console', 399.99, 'BrandS'),
('VR Headset', 299.99, 'BrandT');
