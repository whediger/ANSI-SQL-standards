
INSERT INTO Order_Details_Archive
  SELECT  OrderNumber, ProductNumber,
          QuotedPrice, QuantityOrdered
  FROM    Order_Details
  WHERE   Order_Details.OrderNumber
          IN(SELECT OrderNumber
          FROM Orders
          WHERE Orders.OrderDate < '2013-01-01');
