
SELECT Customers.CustFirstName, Customers.CustLastName,
      'Bike' AS ProdType
FROM ((Customers
INNER JOIN Orders
  ON  Customers.CustomerID =
      Orders.CustomerID)
INNER JOIN Order_Details
  ON  Orders.OrderNumber =
      Order_Details.OrderNumber)
INNER JOIN Products
  ON  Order_Details.ProductNumber =
      Products.ProductNumber
WHERE Products.ProductName LIKE '%bike%'

UNION

SELECT Customers.CustFirstName, Customers.CustLastName,
      'Helmet' AS ProdType
FROM ((Customers
INNER JOIN Orders
  ON  Customers.CustomerID =
      Orders.CustomerID)
INNER JOIN Order_Details
  ON  Orders.OrderNumber =
      Order_Details.OrderNumber)
INNER JOIN Products
  ON  Order_Details.ProductNumber =
      Products.ProductNumber
WHERE Products.ProductName LIKE '%helmet%'

ORDER BY CustFirstName, CustLastName;
