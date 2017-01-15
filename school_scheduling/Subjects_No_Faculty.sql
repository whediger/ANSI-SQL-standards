
SELECT DISTINCT Subjects.SubjectName
FROM Subjects
INNER JOIN Classes
  ON  Subjects.SubjectID =
      Classes.SubjectID
LEFT OUTER JOIN Faculty_Classes
  ON  Classes.ClassID =
      Faculty_Classes.ClassID
WHERE Faculty_Classes.StaffID IS NULL;
