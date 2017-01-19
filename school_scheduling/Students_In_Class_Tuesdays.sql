
SELECT DISTINCT CONCAT(Students.StudFirstName, ' ', Students.StudLastName) AS Tuesday_Student
FROM Students
INNER JOIN Student_Schedules
  ON  Students.StudentID =
      Student_Schedules.StudentID
WHERE Student_Schedules.ClassID
      IN
      (SELECT Classes.ClassID
      FROM Classes
      WHERE Classes.TuesdaySchedule = 1);
