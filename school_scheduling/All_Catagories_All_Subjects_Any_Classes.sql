
SELECT Categories.CategoryDescription, Subjects.SubjectName,
  Classes.StartDate, Classes.StartTime, Classes.Duration
FROM (Categories
LEFT OUTER JOIN Subjects
  ON  Categories.CategoryID =
      Subjects.CategoryID)
LEFT OUTER JOIN Classes
  ON  Subjects.SubjectID =
      Classes.SubjectID;
