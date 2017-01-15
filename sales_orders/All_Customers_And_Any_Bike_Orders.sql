
SELECT CONCAT(Customers.CustFirstName, ' ', Customers.CustLastName) AS Cust_Name,
  RD.OrderDate, RD.ProductName, RD.QuantityOrdered, RD.QuotedPrice
FROM Customers
LEFT OUTER JOIN
  (SELECT Orders.CustomerID, Orders.OrderDate, Products.ProductName,
    Order_Details.QuantityOrdered, Order_Details.QuotedPrice
  FROM((Orders
  INNER JOIN Order_Details
    ON  Orders.OrderNumber =
        Order_Details.OrderNumber)
  INNER JOIN Products
    ON  Order_Details.ProductNumber =
        Products.ProductNumber)
  INNER JOIN Categories
    ON  Categories.CategoryID =
        Products.CategoryID
  WHERE Categories.CategoryDescription =
        'Bikes')
  AS RD
ON Customers.CustomerID = RD.CustomerID;
