
SELECT CONCAT(Bowlers.BowlerFirstName, ' ', Bowlers.BowlerLastName) AS Bowler_FullName,
    (SELECT MAX(Bowler_Scores.RawScore)
    FROM Bowler_Scores
    WHERE Bowlers.BowlerID =
          Bowler_Scores.BowlerID)
    AS High_Score
FROM Bowlers;
