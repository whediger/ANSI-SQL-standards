

SELECT CONCAT(Customers.CustFirstName, ' ', Customers.CustLastName) AS Cust_Full_Name,
      Orders.OrderDate,
      SUM(Order_Details.QuotedPrice *
          Order_Details.QuantityOrdered) AS TotalCost
FROM ((Customers
INNER JOIN Orders
  ON  Customers.CustomerID =
      Orders.CustomerID)
INNER JOIN Order_Details
  ON  Orders.OrderNumber =
      Order_Details.OrderNumber)
GROUP BY Customers.CustFirstName,
      Customers.CustLastName,
      Customers.CustFirstName,
      Orders.OrderDate;
