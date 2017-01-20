
SELECT DISTINCT 'Mountain_Bike' AS Product,
        (SELECT AVG(RetailPrice)
        FROM Products) AS Average_Price
FROM  Products
WHERE Products.ProductName LIKE '%Mountain Bike%';
