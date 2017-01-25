
SELECT Entertainers.EntertainerID, Entertainers.EntStageName
FROM Entertainers
LEFT OUTER JOIN Engagements
  ON  Entertainers.EntertainerID =
      Engagements.EntertainerID
WHERE Engagements.EntertainerID IS NULL;
