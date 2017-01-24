
UPDATE Products
SET RetailPrice = ROUND(1.45 *
    (SELECT DISTINCT WholeSalePrice
    FROM Product_Vendors
    WHERE Product_Vendors.ProductNumber =
          Products.ProductNumber
    AND   WholeSalePrice =
          (SELECT MIN(WholeSalePrice)
          FROM Product_Vendors
          WHERE Product_Vendors.ProductNumber =
                Products.ProductNumber)), 0)
          WHERE RetailPrice < 1.45 *
            (SELECT DISTINCT WholeSalePrice
            FROM Product_Vendors
            WHERE Product_Vendors.ProductNumber =
                  Products.ProductNumber
            AND   WholeSalePrice =
                  (SELECT MIN(WholeSalePrice)
                  FROM Product_Vendors
                  WHERE Product_Vendors.ProductNumber =
                        Products.ProductNumber))
            AND   CategoryID = 2;
