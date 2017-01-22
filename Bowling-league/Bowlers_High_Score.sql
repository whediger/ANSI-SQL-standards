
SELECT  Bowlers.BowlerFirstName,
        Bowlers.BowlerLastName,
        AVG(Bowler_Scores.RawScore) AS Current_Average,
        MAX(Bowler_Scores.RawScore) AS High_Score
FROM Bowlers
INNER JOIN Bowler_Scores
  ON  Bowlers.BowlerID =
      Bowler_Scores.BowlerID
GROUP BY  Bowlers.BowlerFirstName,
          Bowlers.BowlerLastName
HAVING  MAX(Bowler_Scores.RawScore)
        > (AVG(Bowler_Scores.RawScore) + 20);
