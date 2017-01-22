
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
  ON  Student_Schedules.ClassStatus =
      Student_Class_Status.ClassStatus)
INNER JOIN Students
  ON  Student_Schedules.StudentID =
      Students.StudentID
WHERE Student_Class_Status.ClassStatusDescription = 'Completed'
GROUP BY Categories.CategoryDescription,
      Students.StudFirstName,
      Students.StudLastName
HAVING AVG(Student_Schedules.Grade) > 90;
