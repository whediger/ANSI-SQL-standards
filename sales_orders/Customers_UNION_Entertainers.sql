
SELECT CONCAT(Customers.CustLastName, ', ', Customers.CustFirstName) AS Name,
    'Customer' AS Type
FROM Customers

UNION

SELECT Entertainers.EntStageName,
    'Entertainer' AS Type
FROM Entertainers;
