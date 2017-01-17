
SELECT  Customers.CustFirstName,
        Customers.CustLastName,
        (SELECT COUNT(*)
        FROM Orders
        WHERE Orders.CustomerID =
              Customers.CustomerID)
        AS CountOfOrders
        FROM Customers;
