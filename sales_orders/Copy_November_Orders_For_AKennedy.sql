
INSERT INTO Orders
      (OrderDate,
      ShipDate,
      CustomerID,
      EmployeeID,
      OrderTotal)
SELECT DISTINCT
        '2013-06-15' AS OrderDate,
        '2013-06-18' AS ShipDate,
        Orders.CustomerID,
        Orders.EmployeeID,
        Orders.OrderTotal
      FROM Customers
      INNER JOIN Orders
        ON  Customers.CustomerID =
            Orders.CustomerID
      WHERE Orders.OrderDate BETWEEN '2012-11-01' AND '2012-11-30'
      AND   Customers.CustFirstName = 'Angel'
      AND   Customers.CustLastName = 'Kennedy';
