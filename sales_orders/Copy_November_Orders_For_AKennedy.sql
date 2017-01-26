
INSERT INTO Orders
      (OrderDate,
      ShipDate,
      CustomerID,
      EmployeeID,
      OrderTotal)
SELECT
        '2013-06-15',
        '2013-06-18',
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
