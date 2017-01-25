
SELECT  Customers.CustFirstName,
        Customers.CustLastName,
        Engagements.StartDate,
        Engagements.ContractPrice
FROM Customers
INNER JOIN Engagements
  ON  Customers.CustomerID =
      Engagements.CustomerID
WHERE Engagements.ContractPrice >
      ALL(SELECT SUM(ContractPrice)
      FROM Engagements AS E2
      WHERE E2.CustomerID <> Customers.CustomerID
      GROUP BY E2.CustomerID);
