
SELECT CONCAT(Staff.StfFirstName,' ', Staff.StfLastName) AS Sr_Staff_Memeber
FROM Staff
WHERE Staff.DateHired =
      (SELECT MIN(S.DateHired)
      FROM Staff AS S);
