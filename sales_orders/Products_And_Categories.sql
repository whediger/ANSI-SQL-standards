
SELECT Categories.CategoryDescription, Products.ProductName
FROM Categories
INNER JOIN Products
  ON Categories.CategoryID = Products.CategoryID;
