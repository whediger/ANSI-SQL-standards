
SELECT  Orders.OrderNumber,
        Orders.OrderDate,
        Orders.ShipDate,
        (SELECT Customers.CustLastName
        FROM Customers
        WHERE Customers.CustomerID =
              Orders.CustomerID) AS Customer
FROM  Orders
WHERE Orders.ShipDate = '2012-10-03';
