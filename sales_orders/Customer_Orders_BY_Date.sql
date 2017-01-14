
SELECT CONCAT(Customers.CustFirstName, ' ', Customers.CustLastName) AS CustFullName,
        Orders.OrderDate AS OrderDate
FROM Customers
INNER JOIN Orders
  ON  Customers.CustomerID =
      Orders.CustomerID
ORDER BY OrderDate;
