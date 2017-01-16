

SELECT CONCAT(Customers.CustFirstName, ' ', Customers.CustLastName) AS Name,
      Products.ProductName,
      'Customer' AS Type
FROM  (((Customers
INNER JOIN  Orders
  ON  Customers.CustomerID =
      Orders.CustomerID)
INNER JOIN  Order_Details
  ON  Orders.OrderNumber =
      Order_Details.OrderNumber)
INNER JOIN  Products
  ON  Order_Details.ProductNumber =
      Products.ProductNumber)
WHERE Products.ProductName LIKE '%Helmet'

UNION

SELECT Vendors.VendName AS Name,
        Products.ProductName,
        'Vendor' AS Type
FROM  ((Vendors
INNER JOIN  Product_Vendors
  ON  Vendors.VendorID =
      Product_Vendors.VendorID)
INNER JOIN  Products
  ON  Product_Vendors.ProductNumber =
      Products.ProductNumber)
WHERE Products.ProductName LIKE '%Helmet%'

ORDER BY 1;
