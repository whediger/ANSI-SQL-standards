
SELECT  Entertainers.EntStageName,
        COUNT(Engagements.EntertainerID) AS NumContracts,
        SUM(Engagements.ContractPrice) AS TotPrice,
        MIN(Engagements.ContractPrice) AS MinPrice,
        MAX(Engagements.ContractPrice) AS MaxPrice,
        AVG(Engagements.ContractPrice) AS AvgPrice
FROM Entertainers
LEFT OUTER JOIN Engagements
  ON  Entertainers.EntertainerID =
      Engagements.EntertainerID
GROUP BY Entertainers.EntStageName;
