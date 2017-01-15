
SELECT CONCAT(Customers.CustFirstName, ' ', Customers.CustLastName) AS Cust_No_Helmets
FROM
    (SELECT
      Products.ProductName, Orders.CustomerID
    FROM ((Orders
    INNER JOIN Order_Details
      ON  Orders.OrderNumber =
          Order_Details.OrderNumber)
    INNER JOIN Products
      ON  Order_Details.ProductNumber =
          Products.ProductNumber)
    WHERE Products.ProductName LIKE '%Helmet%') AS Prod
RIGHT OUTER JOIN Customers
  ON  Customers.CustomerID =
      Prod.CustomerID
WHERE Prod.ProductName IS NULL;
