
SELECT  Categories.CategoryDescription,
        (SELECT COUNT(Faculty.StaffID)
        FROM (Faculty
        INNER JOIN Faculty_Categories
          ON  Faculty.StaffID =
              Faculty_Categories.StaffID)
        INNER JOIN Categories AS C2
          ON  C2.CategoryID =
              Faculty_Categories.CategoryID
        WHERE C2.CategoryID =
              Categories.CategoryID
        AND   Faculty.Title = 'Professor')
        AS  ProfCount
FROM Categories
WHERE
  (SELECT COUNT(Faculty.StaffID)
  FROM (Faculty
  INNER JOIN Faculty_Categories
    ON  Faculty.StaffID =
        Faculty_Categories.StaffID)
  INNER JOIN Categories AS C3
    ON  C3.CategoryID =
        Faculty_Categories.CategoryID
  WHERE C3.CategoryID =
        Categories.CategoryID
  AND   Faculty.Title = 'Professor') < 3;
