
SELECT CONCAT(Staff.StfFirstName, ' ', Staff.StfLastName) AS Staff_Full_Name,
    COUNT(Faculty_Classes.ClassID) AS Num_Of_Classes
FROM Staff
LEFT OUTER JOIN Faculty_Classes
  ON  Staff.StaffID =
      Faculty_Classes.StaffID
GROUP BY Staff_Full_Name;
