
UPDATE Order_Details
SET QuotedPrice = QuotedPrice * 0.98
WHERE OrderNumber IN
    (SELECT OrderNumber
    FROM Orders
    WHERE (ShipDate - OrderDate) > 30);
