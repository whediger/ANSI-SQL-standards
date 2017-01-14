
SELECT EntBerg.EntStageName
FROM
  (SELECT DISTINCT Entertainers.EntertainerID,
    Entertainers.EntStageName
  FROM(Entertainers
  INNER JOIN Engagements
    ON  Entertainers.EntertainerID =
        Engagements.EntertainerID)
  INNER JOIN Customers
    ON  Customers.CustomerID =
        Engagements.CustomerID
  WHERE Customers.CustLastName = 'Berg')
  AS EntBerg
INNER JOIN
  (SELECT DISTINCT Entertainers.EntertainerID,
    Entertainers.EntStageName
  FROM (Entertainers
  INNER JOIN Engagements
    ON  Entertainers.EntertainerID =
        Engagements.EntertainerID)
  INNER JOIN Customers
    ON  Customers.CustomerID =
        Engagements.CustomerID
  WHERE Customers.CustLastName = 'Hallmark')
  AS EntHallmark
ON  EntBerg.EntertainerID =
    EntHallmark.EntertainerID;
