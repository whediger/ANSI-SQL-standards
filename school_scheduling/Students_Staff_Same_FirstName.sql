
SELECT CONCAT(Students.StudFirstName, ' ', Students.StudLastName) AS StudFullName,
  CONCAT(Staff.StfFirstName, ' ', Staff.StfLastName) AS StfFullName
FROM Students
INNER JOIN Staff
  ON  Students.StudFirstName = StfFirstName;
