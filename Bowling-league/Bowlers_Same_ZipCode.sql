
SELECT CONCAT(B1.BowlerFirstName, ' ', B1.BowlerLastName) AS Bowler_Name_1,
  CONCAT(B2.BowlerFirstName, ' ', B2.BowlerLastName) AS Bowler_Name_2,
  B1.BowlerZip
FROM Bowlers B1
INNER JOIN Bowlers B2
  ON  B2.BowlerZip = B1.BowlerZip
WHERE B1.BowlerID != B2.BowlerID;
