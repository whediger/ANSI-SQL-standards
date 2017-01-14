
SELECT Vendors.VendName, Products.ProductName, Product_Vendors.WholesalePrice
FROM (Vendors
INNER JOIN Product_Vendors
  ON  Vendors.VendorID =
      Product_Vendors.VendorID)
INNER JOIN Products
  ON  Products.ProductNumber =
      Product_Vendors.ProductNumber
WHERE Product_Vendors.WholesalePrice < 100;
