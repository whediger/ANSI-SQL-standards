
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
SELECT  'Angel' AS StudFirstName,
        'Kennedy' AS StudLastName,
        Students.StudStreetAddress,
        Students.StudCity,
        Students.StudState,
        Students.StudZipCode,
        Students.StudAreaCode,
        Students.StudPhoneNumber,
        Students.StudGPA,
        Students.StudMajor
FROM    Students
WHERE   Students.StudFirstName = 'John'
AND     Students.StudLastName = 'Kennedy';
