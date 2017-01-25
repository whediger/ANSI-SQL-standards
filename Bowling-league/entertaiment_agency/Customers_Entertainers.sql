
SELECT CONCAT(Customers.CustFirstName, ' ', Customers.CustLastName) AS Cust_Name,
  Entertainers.EntStageName AS Ent_Stage_Name
FROM (((Customers
  INNER JOIN Musical_Preferences
    ON  Customers.CustomerID =
        Musical_Preferences.CustomerID)
  INNER JOIN Musical_Styles
    ON  Musical_Styles.StyleID =
        Musical_Preferences.StyleID)
  INNER JOIN Entertainer_Styles
    ON  Musical_Styles.StyleID =
        Entertainer_Styles.StyleID)
  INNER JOIN Entertainers
    ON  Entertainers.EntertainerID =
        Entertainer_Styles.EntertainerID;
