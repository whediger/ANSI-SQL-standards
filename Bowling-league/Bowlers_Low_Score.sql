
SELECT DISTINCT CONCAT(Bowlers.BowlerFirstName, ' ', Bowlers.BowlerLastName) AS BowlerLastName,
    Teams.TeamName
FROM (Bowlers
INNER JOIN Teams
  ON  Bowlers.TeamID =
      Teams.TeamID)
INNER JOIN Bowler_Scores
  ON  Bowler_Scores.BowlerID =
      Bowlers.BowlerID
WHERE Bowler_Scores.RawScore < ALL
      (SELECT BS2.RawScore
      FROM Bowlers AS B2
      INNER JOIN Bowler_Scores AS BS2
        ON  B2.BowlerID =
            BS2.BowlerID
      WHERE B2.BowlerID <> Bowlers.BowlerID
      AND   B2.TeamID = Bowlers.TeamID);
