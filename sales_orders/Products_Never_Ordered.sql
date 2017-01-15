
SELECT Products.ProductNumber, Products.ProductName
FROM Products
LEFT OUTER JOIN Order_Details
  ON  Products.ProductNumber =
      Order_Details.ProductNumber
WHERE Order_Details.OrderNumber IS NULL;
