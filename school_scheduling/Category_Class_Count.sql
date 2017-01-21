
SELECT  Categories.CategoryDescription,
        COUNT(Classes.ClassID) AS Class_Count
FROM Categories
INNER JOIN Subjects
  ON  Categories.CategoryID =
      Subjects.CategoryID
INNER JOIN Classes
  ON  Subjects.SubjectID =
      Classes.SubjectID
GROUP BY Categories.CategoryDescription;
