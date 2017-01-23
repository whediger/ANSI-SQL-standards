
SELECT Categories.CategoryDescription AS Category_Description,
      COUNT(Classes.ClassID) AS Num_Of_Classes
FROM Categories
INNER JOIN Subjects
  ON  Categories.CategoryID =
      Subjects.CategoryID
INNER JOIN Classes
  ON  Subjects.SubjectID =
      Classes.SubjectID
GROUP BY Category_Description
HAVING Num_Of_Classes > 3;
