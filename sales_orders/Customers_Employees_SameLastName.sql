
SELECT CONCAT(Employees.EmpFirstName, ' ', Employees.EmpLastName) AS EmpFullName,
  CONCAT(Customers.CustFirstName, ' ', Customers.CustLastName) AS CustFullName
FROM Customers
INNER JOIN Employees
  ON  Employees.EmpLastName =
      Customers.CustLastName;
