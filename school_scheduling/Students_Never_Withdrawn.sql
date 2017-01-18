
SELECT  Students.StudentID,
        Students.StudFirstName,
        Students.StudLastName
FROM  Students
WHERE Students.StudentID
      NOT IN
      (SELECT Student_Schedules.StudentID
      FROM  Student_Schedules
      INNER JOIN Student_Class_Status
        ON  Student_Schedules.ClassStatus =
            Student_Class_Status.ClassStatus
      WHERE Student_Class_Status.ClassStatusDescription = 'Withdrew');
