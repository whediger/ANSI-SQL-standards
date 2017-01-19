
SELECT CONCAT(Staff.StfFirstName, ' ', Staff.StfLastName) AS Staff_Member,
        (SELECT COUNT(StaffID)
        FROM  Faculty_Classes
        WHERE Faculty_Classes.StaffID =
              Staff.staffID) AS Num_Of_Classes
FROM Staff;
