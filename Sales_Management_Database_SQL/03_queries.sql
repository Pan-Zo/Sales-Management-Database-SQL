-- 1. Όλοι οι πελάτες
SELECT * FROM Customers;

-- 2. Παραγγελίες με πληροφορίες πελάτη και προϊόντος
SELECT 
    o.OrderID, 
    c.FirstName, 
    c.LastName, 
    p.ProductName, 
    o.Quantity, 
    o.OrderDate
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Products p ON o.ProductID = p.ProductID;

-- 3. Συνολικά έσοδα ανά πελάτη
SELECT 
    c.FirstName, 
    c.LastName,
    SUM(p.Price * o.Quantity) AS TotalSpent
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY c.CustomerID
ORDER BY TotalSpent DESC;

-- 4. Μέση τιμή προϊόντων ανά κατηγορία
SELECT Category, AVG(Price) AS AvgPrice
FROM Products
GROUP BY Category;

-- 5. Πελάτες από την Αθήνα
SELECT * FROM Customers WHERE City = 'Athens';
