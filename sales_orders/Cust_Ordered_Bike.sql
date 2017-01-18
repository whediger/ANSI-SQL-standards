
SELECT  Customers.CustomerID,
        Customers.CustFirstName,
        Customers.CustLastName
FROM Customers
WHERE EXISTS
    (SELECT *
    FROM  (Orders
    INNER JOIN Order_Details
      ON  Orders.OrderNumber =
          Order_Details.OrderNumber)
    INNER JOIN Products
      ON  Products.ProductNumber =
          Order_Details.ProductNumber
    WHERE Products.CategoryID = 2
    AND   Orders.CustomerID =
          Customers.CustomerID);
