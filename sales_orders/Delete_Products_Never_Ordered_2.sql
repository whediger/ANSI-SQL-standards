
DELETE FROM Products
WHERE ProductNumber NOT IN
(SELECT ProductNumber
FROM Order_Details);
