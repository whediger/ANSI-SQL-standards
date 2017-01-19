
SELECT DISTINCT CONCAT(Bowlers.BowlerFirstName, ' ', Bowlers.BowlerLastName) AS LowBowler
FROM Bowlers
INNER JOIN  Bowler_Scores
  ON  Bowlers.BowlerID =
      Bowler_Scores.BowlerID
WHERE Bowler_Scores.RawScore <
      ALL(SELECT BS2.RawScore
          FROM Bowlers AS B2
          INNER JOIN Bowler_Scores AS BS2
            ON  B2.BowlerID =
                BS2.BowlerID
            WHERE B2.BowlerID <> Bowlers.BowlerID
            AND   Bowlers.TeamID = B2.TeamID);
