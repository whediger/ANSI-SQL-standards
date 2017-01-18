
SELECT  Products.ProductName,
        Products.RetailPrice
FROM Products
INNER JOIN Categories
  ON  Products.CategoryID =
      Categories.CategoryID
WHERE Categories.CategoryDescription = 'Accessories'
AND   Products.RetailPrice >
      ALL (SELECT Products.RetailPrice
          FROM Products
          INNER JOIN Categories
            ON  Products.CategoryID =
                Categories.CategoryID
          WHERE Categories.CategoryDescription = 'Clothing');
