

SELECT  Products.ProductName,
        (SELECT MAX(OrderDate)
        FROM Orders
        INNER JOIN Order_Details
          ON  Orders.OrderNumber =
              Order_Details.OrderNumber
        WHERE Order_Details.ProductNumber =
              Products.ProductNumber)
        AS LastOrdered
FROM Products;
