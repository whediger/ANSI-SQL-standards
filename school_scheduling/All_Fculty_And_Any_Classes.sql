
SELECT CONCAT(Staff.StfFirstName, ' ', Staff.StfLastName) AS Staff_Member,
  Faculty_Classes.ClassID
FROM Staff
LEFT OUTER JOIN Faculty_Classes
  ON  Staff.StaffID =
      Faculty_Classes.StaffID;
