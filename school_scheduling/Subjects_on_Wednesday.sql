
SELECT Subjects.SubjectName AS Subject
FROM  Subjects
WHERE Subjects.SubjectID
      IN
      (SELECT Classes.SubjectID
      FROM Classes
      WHERE Classes.WednesdaySchedule = TRUE);
