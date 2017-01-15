
SELECT CONCAT(Customers.CustFirstName, ' ', Customers.CustLastName) AS Cust_No_Bookings
FROM Customers
RIGHT OUTER JOIN Engagements
  ON  Customers.CustomerID =
      Engagements.CustomerID
WHERE Engagements.CustomerID IS NULL;
