
SELECT CONCAT(Students.StudFirstName, ' ', Students.StudLastName) AS StudName,
  Subjects.SubjectName AS Class_Subject_Name
FROM (((Students
  INNER JOIN Student_Schedules
    ON  Students.StudentID =
        Student_Schedules.StudentID)
  INNER JOIN Classes
    ON  Student_Schedules.ClassID =
        Classes.ClassID)
  INNER JOIN Subjects
    ON  Classes.SubjectID =
        Subjects.SubjectID)
WHERE Student_Schedules.ClassStatus = 1;
