

SELECT CONCAT(Students.StudFirstName, ' ', Students.StudLastName) AS FullName,
      Students.StudStreetAddress,
      Students.StudCity,
      Students.StudState,
      Students.StudZipCode
FROM Students

UNION

SELECT CONCAT(Staff.StfFirstName, ' ', Staff.StfLastName) AS FullName,
      Staff.StfStreetAddress,
      Staff.StfCity,
      Staff.StfState,
      Staff.StfZipCode
FROM Staff;
