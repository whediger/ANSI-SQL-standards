
SELECT  Customers.CustomerID,
        Customers.CustFirstName,
        Customers.CustLastName
FROM Customers
WHERE Customers.CustomerID =
      ANY
      (SELECT Orders.CustomerID
      FROM ((Orders
      INNER JOIN Order_Details
        ON  Orders.OrderNumber =
            Order_Details.OrderNumber)
      INNER JOIN Products
        ON  Order_Details.ProductNumber =
            Products.ProductNumber)
      INNER JOIN Categories
        ON  Categories.CategoryID =
            Products.CategoryID
      WHERE Categories.CategoryDescription = 'Clothing'
      OR    Categories.CategoryDescription = 'Accessories');
