
INSERT IGNORE INTO Order_Details
      (OrderNumber,
      ProductNumber,
      QuotedPrice,
      QuantityOrdered)
SELECT
      ThisOrder.OrderNumber,
      ThisProducts.ProductNumber,
      ThisProducts.QuotedPrice,
      ThisProducts.QuantityOrdered
FROM
      (SELECT O.OrderNumber, O.CustomerID
      FROM Customers
      LEFT OUTER JOIN Orders AS O
        ON  Customers.CustomerID =
            O.CustomerID
      WHERE O.OrderDate BETWEEN '2013-06-15 00:00:00' AND '2013-06-16 23:59:'
      AND   Customers.CustFirstName = 'Angel'
      AND   Customers.CustLastName = 'Kennedy')
      AS ThisOrder,
      (SELECT OD.ProductNumber, OD.QuotedPrice, OD.QuantityOrdered, Orders.OrderDate
      FROM Customers
      INNER JOIN Orders
        ON  Customers.CustomerID =
            Orders.CustomerID
      INNER JOIN Order_Details AS OD
        ON  Orders.OrderNumber =
            OD.OrderNumber
      WHERE Orders.OrderDate BETWEEN '2012-11-01' AND '2012-11-30'
      AND   Customers.CustFirstName = 'Angel'
      AND   Customers.CustLastName = 'Kennedy')
      AS ThisProducts;
