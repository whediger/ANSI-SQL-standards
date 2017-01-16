
SELECT CONCAT(Customers.CustFirstName, ' ', Customers.CustLastName) AS Fullname,
      Customers.CustStreetAddress, Customers.CustCity,
      Customers.CustState, Customers.CustZipCode
FROM Customers

UNION

SELECT CONCAT(Employees.EmpFirstName, ' ', Employees.EmpLastName) AS FullName,
      Employees.EmpStreetAddress, Employees.EmpCity,
      Employees.EmpState, Employees.EmpZipCode
FROM Employees

UNION

SELECT Vendors.VendName AS FullName,
      Vendors.VendStreetAddress, Vendors.VendCity,
      Vendors.VendState, Vendors.VendZipCode
FROM Vendors

ORDER BY 5;
