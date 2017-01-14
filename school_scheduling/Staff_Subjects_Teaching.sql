
SELECT CONCAT(Staff.StfFirstName, ' ', Staff.StfLastName) AS StaffName,
  Subjects.SubjectName AS Subject_Taught
FROM (Staff
  INNER JOIN Faculty_Categories
    ON  Staff.StaffID =
        Faculty_Categories.StaffID)
  INNER JOIN Subjects
    ON  Faculty_Categories.CategoryID =
        Subjects.CategoryID;
