
SELECT Entertainers.EntStageName, Engagements.StartDate,
  Engagements.EndDate, Engagements.ContractPrice
FROM Entertainers
INNER JOIN Engagements
  ON Entertainers.EntertainerID = Engagements.EntertainerID;
