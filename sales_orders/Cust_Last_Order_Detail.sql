
SELECT  Customers.CustFirstName,
        Customers.CustLastName,
        Orders.OrderNumber,
        Orders.OrderDate,
        Order_Details.ProductNumber,
        Products.ProductName,
        Order_Details.QuantityOrdered
FROM ((Customers
INNER JOIN Orders
  ON  Orders.CustomerID =
      Customers.CustomerID)
INNER JOIN Order_Details
  ON  Orders.OrderNumber =
      Order_Details.OrderNumber)
INNER JOIN Products
  ON  Products.ProductNumber =
      Order_Details.ProductNumber
WHERE Orders.OrderDate =
      (SELECT MAX(OrderDate)
      FROM Orders AS O2
      WHERE O2.CustomerID = Customers.CustomerID);
