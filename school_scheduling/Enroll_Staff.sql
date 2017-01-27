
INSERT INTO Students
    (StudFirstName,
    StudLastName,
    StudStreetAddress,
    StudCity,
    StudState,
    StudZipCode,
    StudAreaCode,
    StudPhoneNumber,
    StudGPA,
    StudMajor)
SELECT
    Staff.StfFirstName,
    Staff.StfLastName,
    Staff.StfStreetAddress,
    Staff.StfCity,
    Staff.StfState,
    Staff.StfZipCode,
    Staff.StfAreaCode,
    Staff.StfPhoneNumber,
    NULL AS StudGPA,
    NULL AS StudMajor
FROM
    Staff
WHERE
    Staff.StfFirstName = 'Tim'
AND
    Staff.StfLastName = 'Smith';
