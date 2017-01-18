
SELECT  Customers.CustFirstName,
        Customers.CustLastName,
        (SELECT MAX(StartDate)
        FROM Engagements
        WHERE Engagements.CustomerID =
              Customers.CustomerID)
        AS LastBooking
FROM Customers;
