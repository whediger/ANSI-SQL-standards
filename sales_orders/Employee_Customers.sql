
SELECT CONCAT(Employees.EmpFirstName, ' ', Employees.EmpLastName) AS Employee,
  CONCAT(Customers.CustFirstName, ' ', Customers.CustLastName) AS Customers
FROM ((Employees
INNER JOIN Orders
  ON  Employees.EmployeeID =
      Orders.EmployeeID)
INNER JOIN Customers
  ON  Customers.CustomerID =
      Orders.CustomerID);
