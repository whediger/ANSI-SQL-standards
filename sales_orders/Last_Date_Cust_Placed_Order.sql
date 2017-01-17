
SELECT  Customers.CustFirstName,
        Customers.CustLastName,
        (SELECT MAX(OrderDate)
        FROM Orders
        WHERE Orders.CustomerID =
              Customers.CustomerID)
        AS LastOrderDate
FROM Customers;
