
SELECT  Vendors.VendName,
        COUNT(Product_Vendors.VendorID) AS Products_Sold
FROM Vendors
INNER JOIN Product_Vendors
  ON  Vendors.VendorID =
      Product_Vendors.VendorID
GROUP BY Vendors.VendName;
