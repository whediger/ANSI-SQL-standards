
DELETE FROM Categories
WHERE CategoryID NOT IN
(SELECT CategoryID
FROM Products);
