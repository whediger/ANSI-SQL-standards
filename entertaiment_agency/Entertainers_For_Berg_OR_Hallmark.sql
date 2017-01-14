
SELECT DISTINCT Entertainers.EntStageName
FROM (Entertainers
INNER JOIN Engagements
  ON Entertainers.EntertainerID = Engagements.EntertainerID)
INNER JOIN Customers
  ON Customers.CustomerID = Engagements.CustomerID
WHERE Customers.CustLastName = 'Berg'
  OR Customers.CustLastname = 'Hallmark';
