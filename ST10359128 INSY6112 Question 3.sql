-- ST10359128
-- Question 3
-- Q.3.1. Creating the customers table
CREATE TABLE Customer (
CustomerID INT PRIMARY KEY,
CustomerFullName VARCHAR(100) NOT NULL,
CustomerEmail VARCHAR(100) NOT NULL
);

-- Q.3.2. Creating the orders table
CREATE TABLE Orders(
OrderID INT PRIMARY KEY,
OrderNumber VARCHAR (20) NOT NULL,
CustomerID INT NOT NULL,
OrderDate DATE NOT NULL,
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Q.3.3. Inserting the given Data
INSERT INTO Customer (CustomerID, CustomerFullName,CustomerEmail)
VALUES (1, 'Debbie Duncan', 'dduncan@yahoo.com');
INSERT INTO Orders (OrderID, OrderNumber, CustomerID, OrderDate)
VALUES (1, '020149', 1, '2025-02-14');