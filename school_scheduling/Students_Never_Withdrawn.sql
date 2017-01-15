
SELECT CONCAT(Students.StudLastName, ', ', Students.StudFirstName) AS Student_Full_Name
FROM Students
LEFT OUTER JOIN
  (SELECT Student_Schedules.StudentID
  FROM Student_Class_Status
  INNER JOIN Student_Schedules
    ON  Student_Class_Status.ClassStatus =
        Student_Schedules.ClassStatus
  WHERE Student_Class_Status.ClassStatusDescription = 'withdrew')
  AS Withdrew
ON Students.StudentID = Withdrew.StudentID
WHERE Withdrew.StudentID IS NULL;
