
SELECT  Entertainers.EntertainerID,
        Entertainers.EntStageName
FROM Entertainers
WHERE EXISTS
      (SELECT *
      FROM Customers
      INNER JOIN Engagements
        ON  Customers.CustomerID =
            Engagements.CustomerID
      WHERE Customers.CustLastName = 'Berg'
      AND   Engagements.EntertainerID =
            Entertainers.EntertainerID);
