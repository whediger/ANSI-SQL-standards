
DELETE FROM Employees
WHERE EmployeeID NOT IN
(SELECT EmployeeID
FROM Orders);
