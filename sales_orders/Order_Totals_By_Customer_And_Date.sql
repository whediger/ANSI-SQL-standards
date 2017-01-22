
SELECT CONCAT(Customers.CustFirstName, ' ', Customers.CustLastName) AS Cust_Full_Name,
      Orders.OrderDate,
      SUM(Order_Details.QuotedPrice *
      Order_Details.QuantityOrdered) AS Total_Cost
FROM (Customers
INNER JOIN Orders
  ON  Customers.CustomerID =
      Orders.CustomerID)
INNER JOIN Order_Details
  ON  Orders.OrderNumber =
      Order_Details.OrderNumber
GROUP BY Customers.CustFirstName,
      Customers.CustLastName,
      Orders.OrderDate
HAVING SUM(Order_Details.QuotedPrice *
      Order_Details.QuantityOrdered) > 1000;
