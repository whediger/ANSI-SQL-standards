
SELECT CONCAT(Students.StudFirstName, ' ', Students.StudLastName) AS Students_No_Class
FROM  (
  SELECT Student_Schedules.ClassStatus, Students.StudentID
  FROM Students
  INNER JOIN Student_Schedules
    ON  Student_Schedules.StudentID =
        Students.StudentID
  WHERE Student_Schedules.ClassStatus = 1)
AS Status
RIGHT OUTER JOIN Students
  ON  Status.StudentID =
      Students.StudentID
WHERE Status.ClassStatus IS NULL;
