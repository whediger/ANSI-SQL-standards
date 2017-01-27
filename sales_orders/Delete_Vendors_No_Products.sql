
DELETE FROM Vendors
WHERE VendorID NOT IN
(SELECT VendorID
FROM Product_Vendors);
