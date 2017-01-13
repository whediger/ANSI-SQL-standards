
SELECT DISTINCT Subjects.SubjectName
FROM Subjects
INNER JOIN Classes
  ON Subjects.SubjectID = Classes.SubjectID
WHERE Classes.WednesdaySchedule IS TRUE;
