
SELECT  Teams.TeamName,
        Bowlers.BowlerID,
        Bowlers.BowlerFirstName,
        Bowlers.BowlerLastName,
        Bowler_Scores.HandiCapScore
FROM  (Bowlers
INNER JOIN Teams
  ON  Bowlers.BowlerID =
      Teams.CaptainID)
INNER JOIN Bowler_Scores
  ON  Bowlers.BowlerID =
      Bowler_Scores.BowlerID
WHERE Bowler_Scores.HandiCapScore >
      ALL
      (SELECT BS2.HandiCapScore
      FROM Bowlers AS B2
      INNER JOIN Bowler_Scores AS BS2
        ON  B2.BowlerID =
            BS2.BowlerID
      WHERE B2.BowlerID <> Bowlers.BowlerID
      AND   B2.TeamID =
            Bowlers.TeamID);
