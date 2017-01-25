
INSERT INTO Categories
    SELECT 'ITA' AS CategoryID,
      'Italian' AS CategoryDescription,
      Departments.DepartmentID
    FROM Departments
    WHERE Departments.DeptName = 'Humanities';
