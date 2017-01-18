
SELECT  Bowlers.BowlerFirstName,
        Bowlers.BowlerLastName,
        (SELECT MAX(RawScore)
        FROM Bowler_Scores
        WHERE Bowler_Scores.BowlerID =
              Bowlers.BowlerID)
        AS HighScore
FROM Bowlers;
