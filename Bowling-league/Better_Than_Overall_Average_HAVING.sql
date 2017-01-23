
SELECT CONCAT(Bowlers.BowlerFirstName, ' ', Bowlers.BowlerLastName) AS Bowler_Name,
        AVG(Bowler_Scores.RawScore) AS Personal_Average
FROM Bowlers
INNER JOIN Bowler_Scores
  ON  Bowlers.BowlerID =
      Bowler_Scores.BowlerID
GROUP BY Bowler_Name
HAVING Personal_Average
      >= (SELECT AVG(BS.RawScore)
          FROM Bowler_Scores AS BS);
