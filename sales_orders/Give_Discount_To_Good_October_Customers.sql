
UPDATE Order_Details
SET QuotedPrice = (QuotedPrice * 0.95)
WHERE OrderNumber
      IN(SELECT Orders.OrderNumber
        FROM Orders
        INNER JOIN (SELECT SUM(O2.OrderTotal) AS Total,
                            O2.CustomerID
                    FROM Orders AS O2
                    WHERE O2.OrderDate BETWEEN '2012-10-01' AND '2012-10-31'
                    GROUP BY O2.CustomerID)
                    AS Orders2
          ON  Orders.CustomerID =
              Orders2.CustomerID
        WHERE Orders2.Total > 50000);
