
SELECT  Products.ProductName,
        SUM(Order_Details.QuotedPrice
            * Order_Details.QuantityOrdered)
        AS Total_Sales
FROM Products
INNER JOIN Order_Details
  ON  Products.ProductNumber =
      Order_Details.ProductNumber
GROUP BY Products.ProductName;
