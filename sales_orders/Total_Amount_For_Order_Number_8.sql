

SELECT  SUM(Order_Details.QuotedPrice) AS Order_Total
FROM    Order_Details
WHERE   Order_Details.OrderNumber = 8;
