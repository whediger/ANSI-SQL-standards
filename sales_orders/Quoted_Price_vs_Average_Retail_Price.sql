
SELECT DISTINCT Products.ProductName,
      Products.ProductNumber
FROM  Products
INNER JOIN Order_Details
  ON  Products.ProductNumber =
      Order_Details.ProductNumber
WHERE Order_Details.QuotedPrice >=
      (SELECT AVG(RetailPrice)
      FROM Products);
