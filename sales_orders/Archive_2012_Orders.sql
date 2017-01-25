
INSERT INTO Orders_Archive
  SELECT  OrderNumber, OrderDate, ShipDate,
          CustomerID, EmployeeID, OrderTotal
  FROM    Orders
  WHERE   OrderDate < '2013-01-01';
