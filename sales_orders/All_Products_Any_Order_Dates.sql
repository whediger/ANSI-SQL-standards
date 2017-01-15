
SELECT Products.ProductName, Ord.OrderDate
FROM
  (SELECT Orders.OrderDate, Order_Details.ProductNumber
  FROM Orders
  INNER JOIN Order_Details
    ON  Orders.OrderNumber =
        Order_Details.OrderNumber)
  AS Ord
RIGHT OUTER JOIN Products
  ON  Ord.ProductNumber =
      Products.ProductNumber;
