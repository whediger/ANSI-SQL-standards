
SELECT Students.StudFirstName AS FirstName,
      Students.StudLastName AS LastName,
      Student_SChedules.Grade AS Score,
      'Student' AS Type
FROM (((Students
INNER JOIN Student_Schedules
  ON  Students.StudentID =
      Student_Schedules.StudentID)
INNER JOIN Student_Class_Status
  ON  Student_Schedules.ClassStatus =
      Student_Class_Status.ClassStatus)
INNER JOIN Classes
  ON  Student_Schedules.ClassID =
      Classes.ClassID)
INNER JOIN Subjects
  ON  Subjects.SubjectID =
      Classes.SubjectID
WHERE Student_Class_Status.ClassStatusDescription =
      'Completed'
AND   Student_Schedules.Grade >= 85
AND   Subjects.CategoryID = 'Art'

UNION

SELECT Staff.StfFirstName,
      Staff.StfLastName,
      Faculty_Subjects.ProficiencyRating AS Score,
      'Faculty' AS Type
FROM (Staff
INNER JOIN Faculty_Subjects
  ON  Staff.StaffID =
      Faculty_Subjects.StaffID)
INNER JOIN Subjects
  ON  Faculty_Subjects.SubjectID =
      Subjects.SubjectID
WHERE Faculty_Subjects.ProficiencyRating > 8
AND   Subjects.CategoryID = 'Art';
