
SELECT Musical_Styles.StyleID, Musical_Styles.StyleName,
  Customers.CustomerID, Customers.CustFirstName, Customers.CustLastName
FROM Musical_Styles
LEFT OUTER JOIN (Musical_Preferences
  INNER JOIN Customers
    ON  Musical_Preferences.CustomerID =
        Customers.CustomerID)
ON  Musical_Styles.StyleID =
    Musical_Preferences.StyleID;
