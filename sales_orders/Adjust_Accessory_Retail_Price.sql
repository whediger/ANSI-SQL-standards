
UPDATE  Products
SET     RetailPrice = ROUND(1.35 *
        (SELECT DISTINCT WholeSalePrice
        FROM Product_Vendors
        WHERE Product_Vendors.ProductNumber =
              Products.ProductNumber
        AND   WholeSalePrice =
              (SELECT MAX(WholeSalePrice)
              FROM Product_Vendors
              WHERE Product_Vendors.ProductNumber =
                    Products.ProductNumber)), 0)
WHERE   RetailPrice > 1.35 *
        (SELECT DISTINCT WholeSalePrice
        FROM Product_Vendors
        WHERE Product_Vendors.ProductNumber =
              Products.ProductNumber
        AND   WholeSalePrice =
              (SELECT MIN(WholeSalePrice)
              FROM Product_Vendors
              WHERE Product_Vendors.ProductNumber =
                    Products.ProductNUmber))
AND     CategoryID = 1;
