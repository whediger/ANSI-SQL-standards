
SELECT  Bowlers.BowlerFirstName,
        Bowlers.BowlerLastName,
        MAX(Bowler_Scores.RawScore) AS HighScore
FROM Bowlers
INNER JOIN Bowler_Scores
  ON  Bowlers.BowlerID =
      Bowler_Scores.BowlerID
GROUP BY  Bowlers.BowlerFirstName,
          Bowlers.BowlerLastName;
