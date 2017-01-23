
SELECT CONCAT(Staff.StfLastName, ', ', Staff.StfFirstName) AS Staff_Name,
        (SELECT COUNT(Faculty_Classes.ClassID)
        FROM Faculty_Classes
        WHERE Staff.StaffID =
              Faculty_Classes.StaffID)
        AS Num_Of_Classes
FROM Staff
HAVING Num_Of_Classes < 3;
