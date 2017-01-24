
UPDATE Students
SET Students.StudGPA =
    (SELECT ROUND(SUM(Classes.Credits *
          Student_Schedules.Grade) /
          SUM(Classes.Credits), 3)
    FROM Classes
    INNER JOIN Student_Schedules
      ON  Classes.ClassID =
          Student_Schedules.ClassID
    WHERE (Student_Schedules.ClassStatus = 2)
    AND   (Student_Schedules.StudentID =
          Students.StudentID));
