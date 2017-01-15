
SELECT Classes.ClassID AS Classes_No_Students
FROM
  (SELECT Student_Schedules.ClassStatus, Student_Schedules.ClassID
  FROM Student_Schedules
  INNER JOIN Student_Class_Status
    ON  Student_Schedules.ClassStatus =
        Student_Class_Status.ClassStatus
  WHERE Student_Class_Status.ClassStatus = 1)
  AS    Schedule
RIGHT OUTER JOIN Classes
    ON  Classes.ClassID =
        Schedule.ClassID
WHERE Schedule.ClassID IS NULL;
