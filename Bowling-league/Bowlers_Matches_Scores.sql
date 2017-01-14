
SELECT CONCAT(Bowlers.BowlerFirstName, ' ', Bowlers.BowlerLastName) AS Bowler_Name,
  Bowler_Scores.MatchID, Bowler_Scores.RawScore
FROM Bowlers
INNER JOIN Bowler_Scores
  ON  Bowlers.BowlerID =
      Bowler_Scores.BowlerID;
