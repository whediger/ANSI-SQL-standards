
SELECT  Staff.StfFirstName,
        Staff.StfLastName,
        COUNT(*) AS ClassCount
FROM Staff
INNER JOIN Faculty_Classes
  ON  Staff.StaffID =
      Faculty_Classes.StaffID
GROUP BY  Staff.StfFirstName,
          Staff.StfLastName
HAVING COUNT(*) < 3;
