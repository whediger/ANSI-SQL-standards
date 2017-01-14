
SELECT CONCAT(Employees.EmpFirstName, ' ', Employees.EmpLastName) AS Employee_Name,
  CONCAT(Customers.CustFirstName, ' ', Customers.CustLastName) AS Customer_Name,
  Employees.EmpCity AS Common_City
FROM Employees
INNER JOIN Customers
  ON  Customers.CustCity =
      Employees.EmpCity;
