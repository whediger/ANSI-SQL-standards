

DELETE FROM Product_Vendors
WHERE ProductNumber NOT IN
(SELECT ProductNumber
FROM Order_Details);
