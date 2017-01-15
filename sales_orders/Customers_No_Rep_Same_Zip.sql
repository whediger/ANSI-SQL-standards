
SELECT CONCAT(Customers.CustFirstName, ' ', Customers.CustLastName) AS Cust_No_Sales_Rep,
    Customers.CustZipCode AS Cust_Zip_Code
FROM
  (SELECT Employees.EmpFirstName, Employees.EmpZipCode, Orders.EmployeeID
  FROM Employees
  INNER JOIN Orders
    ON  Employees.EmployeeID =
        Orders.EmployeeID)
  AS Emp
RIGHT OUTER JOIN Customers
  ON  Customers.CustZipCode =
      Emp.EmpZipCode
WHERE Emp.EmployeeID IS NULL;
