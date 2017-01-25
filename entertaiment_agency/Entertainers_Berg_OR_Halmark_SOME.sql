
SELECT Entertainers.EntStageName AS Entertainer
FROM Entertainers
WHERE Entertainers.EntertainerID =
      SOME
      (SELECT Entertainers.EntertainerID
      FROM Entertainers
      INNER JOIN Engagements
        ON  Entertainers.EntertainerID =
            Engagements.EntertainerID
      INNER JOIN Customers
        ON  Engagements.CustomerID =
            Customers.CustomerID
      WHERE Customers.CustLastName = 'Berg'
      OR    Customers.CustLastName = 'Hallmark');
