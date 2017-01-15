
SELECT Staff.StfFirstName, Staff.StfLastName
FROM Staff
LEFT OUTER JOIN Faculty_Classes
  ON  Staff.StaffID =
      Faculty_Classes.StaffID
WHERE Faculty_Classes.ClassID IS NULL;
