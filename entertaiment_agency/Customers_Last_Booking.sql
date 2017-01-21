
SELECT  CONCAT(Customers.CustLastName, ', ', Customers.CustFirstName) AS Customers_Name,
        CONCAT(Customers.CustStreetAddress,
              Customers.CustCity,
              Customers.CustState,
              Customers.CustZipCode)
        AS Customer_Full_Address,
        MAX(Engagements.StartDate) AS LatestDate,
        SUM(Engagements.ContractPrice) AS TotalContractPrice
FROM Customers
INNER JOIN Engagements
  ON  Customers.CustomerID =
      Engagements.CustomerID
GROUP BY  Customers.CustLastName,
          Customers.CustFirstName,
          Customers.CustStreetAddress,
          Customers.CustCity,
          Customers.CustState,
          Customers.CustZipCode;
