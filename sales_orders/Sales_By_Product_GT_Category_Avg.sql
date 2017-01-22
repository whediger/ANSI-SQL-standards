

SELECT  P1.ProductName,
        SUM(Order_Details.QuotedPrice
        * Order_Details.QuantityOrdered) AS Total_Sales,
        Avg.Avg_Category_Sales
FROM Products AS P1
INNER JOIN Order_Details
  ON  P1.ProductNumber =
      Order_Details.ProductNumber
LEFT OUTER JOIN
        (SELECT AVG(Sums.Total_Sales) AS Avg_Category_Sales,
              CategoryID
          FROM
            (SELECT   P.ProductName,
                      P.CategoryID,
                      SUM(OD.QuotedPrice
                      * OD.QuantityOrdered) AS Total_Sales
              FROM Products AS P
              INNER JOIN Order_Details AS OD
                ON  P.ProductNumber =
                    OD.ProductNumber
              GROUP BY  P.CategoryID,
                        P.ProductName) AS Sums
        GROUP BY Sums.CategoryID)
        AS Avg
  ON  Avg.CategoryID =
      P1.CategoryID
GROUP BY  P1.ProductName,
          Avg.Avg_Category_Sales
HAVING  Total_Sales
        > Avg.Avg_Category_Sales;
