
SELECT CONCAT(Bowlers.BowlerFirstName, ' ', Bowlers.BowlerLastName) AS Bowler_Name,
      AVG(Bowler_Scores.RawScore) AS Average_Score
FROM Bowlers
INNER JOIN Bowler_Scores
  ON  Bowlers.BowlerID =
      Bowler_Scores.BowlerID
GROUP BY Bowler_Name
HAVING Average_Score > 155;
