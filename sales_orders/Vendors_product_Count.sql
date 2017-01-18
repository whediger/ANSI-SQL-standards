
SELECT  VendName,
        (SELECT COUNT(*)
        FROM Product_Vendors
        WHERE Product_Vendors.VendorID =
              Vendors.VendorID)
        AS  VendProductCount
FROM Vendors;
