

SELECT CONCAT(Customers.CustFirstName, ' ', Customers.CustLastName) AS Customer_Name,
      'Customer' AS Type
FROM Customers
INNER JOIN Musical_Preferences
WHERE Musical_Preferences.StyleID = 10

UNION

SELECT Entertainers.EntStageName,
      'Entertainer' AS Type
FROM  ((Entertainers
INNER JOIN Entertainer_Styles
  ON  Entertainers.EntertainerID =
      Entertainer_Styles.EntertainerID)
INNER JOIN Musical_Styles
  ON  Entertainer_Styles.StyleID =
      Musical_Styles.StyleID)
WHERE Musical_Styles.StyleID = 10;
