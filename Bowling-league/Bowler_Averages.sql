
SELECT CONCAT(Bowlers.BowlerFirstName, ' ', Bowlers.BowlerLastName) AS Bowler_Name,
    AVG(Bowler_Scores.RawScore) AS Raw_Score_Avg
FROM Bowlers
LEFT OUTER JOIN Bowler_Scores
  ON  Bowlers.BowlerID =
      Bowler_Scores.BowlerID
GROUP BY Bowler_Name;
