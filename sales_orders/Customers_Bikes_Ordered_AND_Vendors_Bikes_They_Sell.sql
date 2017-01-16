

SELECT CONCAT(Customers.CustLastName, ', ', Customers.CustFirstName) AS FullName,
        Products.ProductName, 'Customer' AS RowID
FROM ((Customers
  INNER JOIN Orders
    ON  Customers.CustomerID =
        Orders.CustomerID)
  INNER JOIN Order_Details
    ON  Orders.OrderNumber =
        Order_Details.OrderNumber)
  INNER JOIN Products
    ON  Products.ProductNumber =
        Order_Details.ProductNumber
WHERE products.ProductName LIKE '%bike%'
UNION
SELECT Vendors.VendName, Products.ProductName,
        'Vendor' AS RowID
FROM  (Vendors
  INNER JOIN Product_Vendors
    ON  Vendors.VendorID =
        Product_Vendors.VendorID)
  INNER JOIN Products
    ON  Products.ProductNumber =
        Product_Vendors.ProductNumber
WHERE Products.ProductName LIKE '%bike%';
