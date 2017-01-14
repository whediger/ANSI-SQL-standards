
SELECT CONCAT(Students.StudFirstName, ' ', Students.StudLastName) AS Student_Name,
  Student_Schedules.Grade, Subjects.SubjectName
FROM (((Students
  INNER JOIN Student_Schedules
    ON  Student_Schedules.StudentID =
        Students.StudentID)
  INNER JOIN Classes
    ON  Student_Schedules.ClassID =
        Classes.ClassID)
  INNER JOIN Subjects
    ON  Classes.SubjectID =
        Subjects.SubjectID)
WHERE   (Subjects.SubjectName LIKE '%Art%'
          AND   Student_Schedules.Grade > 85)
  AND   (Subjects.SubjectName LIKE '%Computer%'
          AND   Student_Schedules.Grade > 85);
