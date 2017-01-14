
SELECT DISTINCT Customers.CustFirstName, Customers.CustLastName
FROM ((Customers
INNER JOIN Orders
  ON Customers.CustomerID = Orders.CustomerID)
INNER JOIN Order_Details
  ON Orders.OrderNumber = Order_Details.OrderNumber)
INNER JOIN Products
  ON Products.ProductNumber = Order_Details.ProductNumber
WHERE Products.ProductName LIKE '%Helmet%';
