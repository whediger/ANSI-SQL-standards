

SELECT CONCAT(Customers.CustFirstName, ' ', Customers.CustLastName) AS Cust_Who_Like_Country,
    Musical_Preferences.StyleID
FROM Customers
LEFT OUTER JOIN Musical_Preferences
  ON  Customers.CustomerID =
      Musical_Preferences.CustomerID
WHERE Musical_Preferences.StyleID IN
      (SELECT Musical_Styles.StyleID
      FROM Musical_Styles
      WHERE Musical_Styles.StyleName LIKE 'Country%');
