
SELECT CONCAT(Staff.StfFirstName, ' ', Staff.StfLastName) AS Staff_Name,
      COUNT(Faculty_Classes.StaffID) AS Class_Count
FROM Staff
LEFT OUTER JOIN Faculty_Classes
  ON  Staff.StaffID =
      Faculty_Classes.StaffID
GROUP BY  Staff_Name;
