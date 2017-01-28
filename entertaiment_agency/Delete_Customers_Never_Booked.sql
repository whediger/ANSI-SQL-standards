
DELETE FROM Customers
WHERE CustomerID NOT IN
(SELECT CustomerID
FROM Engagements);
