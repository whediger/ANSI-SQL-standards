
SELECT  CONCAT(Customers.CustLastName, ' ', Customers.CustFirstName) AS Cust_Name,
        COUNT(Engagements.CustomerID) AS NumContracts,
        SUM(Engagements.ContractPrice) AS TotPrice,
        MIN(Engagements.ContractPrice) AS MinPrice,
        MAX(Engagements.ContractPrice) AS MaxPrice,
        AVG(Engagements.ContractPrice) AS AvgPrice
FROM Customers
LEFT OUTER JOIN Engagements
  ON  Customers.CustomerID =
      Engagements.CustomerID
GROUP BY  Customers.CustLastName,
          Customers.CustFirstName;
