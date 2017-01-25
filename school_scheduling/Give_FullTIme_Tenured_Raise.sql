
UPDATE  Staff
SET     Salary = (Salary * 1.05)
WHERE   StaffID
        IN(SELECT Faculty.StaffID
          FROM Faculty
          WHERE Faculty.Tenured = 1
          AND   Faculty.Status = 'Full Time');
