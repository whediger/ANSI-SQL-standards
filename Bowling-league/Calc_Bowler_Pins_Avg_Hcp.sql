
UPDATE Bowlers
SET Bowlers.BowlerTotalPins =
    (SELECT SUM(RawScore)
    FROM Bowler_Scores
    WHERE Bowler_Scores.BowlerID =
          Bowlers.BowlerID),
          Bowlers.BowlerCurrentAverage =
          (SELECT ROUND(AVG(Bowler_Scores.RawScore), 0)
          FROM Bowler_Scores
          WHERE Bowler_Scores.BowlerID =
                Bowlers.BowlerID),
                Bowlers.BowlerCurrentHcp =
                (SELECT ROUND(0.9 *
                        (200 - ROUND(AVG(Bowler_Scores.RawScore), 0)), 0)
                FROM Bowler_Scores
                WHERE Bowler_scores.BowlerID =
                      Bowlers.BowlerID);
