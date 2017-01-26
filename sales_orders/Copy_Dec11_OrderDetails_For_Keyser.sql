
INSERT INTO Order_Details
      (OrderNumber,
      ProductNumber,
      QuotedPrice,
      QuantityOrdered)
SELECT
      Orders.OrderNumber,
      OD.ProductNumber,
      OD.QuotedPrice,
      OD.QuantityOrdered
FROM  Orders,
      (SELECT Order_Details.ProductNumber,
              Order_Details.QuotedPrice,
              Order_Details.QuantityOrdered
        FROM Customers
        INNER JOIN Orders
          ON  Customers.CustomerID =
              Orders.CustomerID
        INNER JOIN Order_Details
          ON  Orders.OrderNumber =
              Order_Details.OrderNumber
        WHERE Orders.OrderDate = '2012-12-11'
        AND   Customers.CustLastName = 'Keyser')
        AS OD
WHERE Orders.OrderNumber =
      (SELECT Orders.OrderNumber
      FROM Orders
      WHERE Orders.OrderDate = '2013-06-12')
