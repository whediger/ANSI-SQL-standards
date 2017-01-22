


SELECT COUNT(Prod_Count.Num_Of_Products) AS Num_Of_Orders_With_One_Product
FROM
    (SELECT COUNT(Order_Details.ProductNumber) Num_Of_Products,
          Orders.OrderNumber
    FROM Orders
    INNER JOIN Order_Details
      ON  Orders.OrderNumber =
          Order_Details.OrderNumber
    GROUP BY Orders.OrderNumber) AS Prod_Count
WHERE Prod_Count.Num_Of_Products = 1;
