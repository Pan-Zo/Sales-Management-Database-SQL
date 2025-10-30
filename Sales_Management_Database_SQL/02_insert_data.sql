INSERT INTO Customers (FirstName, LastName, Email, City)
VALUES
('John', 'Smith', 'john.smith@email.com', 'Athens'),
('Maria', 'Papadopoulou', 'maria.pap@email.com', 'Thessaloniki'),
('George', 'Nikolaou', 'george.nik@email.com', 'Patra');

INSERT INTO Products (ProductName, Category, Price)
VALUES
('Laptop', 'Electronics', 1200.00),
('Headphones', 'Electronics', 80.00),
('Coffee Machine', 'Appliances', 150.00);

INSERT INTO Orders (CustomerID, ProductID, Quantity, OrderDate)
VALUES
(1, 1, 1, '2025-10-01'),
(2, 2, 2, '2025-10-02'),
(3, 3, 1, '2025-10-03'),
(1, 2, 1, '2025-10-05');
