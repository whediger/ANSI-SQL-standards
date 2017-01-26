
INSERT INTO Orders
      (OrderDate, ShipDate, CustomerID,
      EmployeeID, OrderTotal)
SELECT  DISTINCT
        '2013-06-12',
        '2013-06-15',
        Orders.CustomerID,
        Orders.EmployeeID,
        Orders.OrderTotal
FROM Customers
INNER JOIN Orders
  ON  Customers.CustomerID =
      Orders.CustomerID
INNER JOIN Order_Details
  ON  Orders.OrderNumber =
      Order_Details.OrderNumber
WHERE Orders.OrderDate = '2012-12-11'
AND   Customers.CustLastName = 'Keyser';
