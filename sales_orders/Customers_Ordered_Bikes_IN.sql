
SELECT DISTINCT CONCAT(Customers.CustFirstName, ' ', Customers.CustLastName) AS Customer_Name
FROM Customers
INNER JOIN Orders
  ON  Customers.CustomerID =
      Orders.CustomerID
INNER JOIN Order_Details
  ON  Orders.OrderNumber =
      Order_Details.OrderNumber
WHERE Order_Details.OrderNumber
      IN
      (SELECT Order_Details.OrderNumber
      FROM Products
      INNER JOIN Order_Details
        ON  Order_Details.ProductNumber =
            Products.ProductNumber
      WHERE Products.ProductName LIKE '%Bike%'
      AND   Products.ProductName NOT LIKE '%Computer%');
