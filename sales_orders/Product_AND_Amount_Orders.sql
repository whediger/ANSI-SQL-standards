
SELECT Orders.OrderNumber, Products.ProductName, Order_Details.QuotedPrice
FROM (Orders
INNER JOIN Order_Details
  ON  Orders.OrderNumber =
      Order_Details.OrderNumber)
INNER JOIN Products
  ON  Products.ProductNumber =
      Order_Details.ProductNumber
ORDER BY  Orders.OrderNumber;
