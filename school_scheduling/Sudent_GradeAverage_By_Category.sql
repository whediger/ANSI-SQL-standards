
SELECT  Categories.CategoryDescription,
        Students.StudFirstName,
        Students.StudLastName,
        AVG(Student_Schedules.Grade) AS AvgOfGrade
FROM ((((Categories
INNER JOIN Subjects
  ON  Categories.CategoryID =
      Subjects.CategoryID)
INNER JOIN Classes
  ON  Subjects.SubjectID =
      Classes.SubjectID)
INNER JOIN Student_Schedules
  ON  Classes.ClassID =
      Student_Schedules.ClassID)
INNER JOIN Student_Class_Status
  ON  Student_Class_Status.ClassStatus =
      Student_Schedules.ClassStatus)
INNER JOIN Students
  ON  Students.StudentID =
      Student_Schedules.StudentID
WHERE Student_Class_Status.ClassStatusDescription = 'Completed'
GROUP BY  Categories.CategoryDescription,
          Students.StudLastName,
          Students.StudFirstName;
