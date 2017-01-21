
SELECT  Vendors.VendName,
        (SELECT COUNT(Product_Vendors.VendorID)
        FROM Product_Vendors
        WHERE Product_Vendors.VendorID =
              Vendors.VendorID)
        AS Product_Count
FROM Vendors;
