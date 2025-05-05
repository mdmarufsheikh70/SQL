CREATE DATABASE For_A_Shop;
 USE For_A_Shop;;
 
 CREATE TABLE Customer(
 CustomerID int PRIMARY KEY,
 CustomerName varchar(200) NOT NULL,
 Age int CHECK (Age >= 18),
 Phone varchar(100) UNIQUE,
 Address varchar(300) DEFAULT 'Dhaka'
);

INSERT INTO Customer VALUES (1, 'Abir', 22, '01839884743', 'Chadpur');
INSERT INTO Customer VALUES (2, 'Masum', 22, '01739884743', 'Jessore');

INSERT INTO Customer (CustomerID, CustomerName, Age, Phone, Address)
VALUES (3, 'Maruf', 22, '01539884743', 'Pabna');

INSERT INTO Customer (CustomerID, CustomerName, Age, Phone, Address)
VALUES (4, 'Samiha', 22, '01439884743', 'Narsingdi');

INSERT INTO Customer (CustomerID, CustomerName, Age, Phone, Address)
VALUES (5, 'Mahinul', 22, '01339884743', 'Pabna');

INSERT INTO Customer (CustomerID, CustomerName, Age, Phone)
VALUES (6, 'Kamal', 22, '01639884743');

SELECT *
FROM Customer;


CREATE TABLE OrderTABLE(
OrderID int PRIMARY KEY,
CustomerID int FOREIGN KEY REFERENCES Customer(CustomerID),
OrderDetails varchar(400)
);

INSERT INTO OrderTABLE (OrderID, CustomerID, OrderDetails)
VALUES (10, 1, 'Smartphone');

SELECT *
FROM OrderTABLE;