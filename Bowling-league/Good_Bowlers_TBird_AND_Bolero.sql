
SELECT BowlerTbird.BowlerFullName
FROM
  (SELECT DISTINCT Bowlers.BowlerID,
    CONCAT(Bowlers.BowlerLastName, ', ', Bowlers.BowlerFirstName) AS BowlerFullName
  FROM ((Bowlers
  INNER JOIN Bowler_Scores
    ON  Bowlers.BowlerID =
        Bowler_Scores.BowlerID)
  INNER JOIN Tourney_Matches
    ON  Tourney_Matches.MatchID =
        Bowler_Scores.MatchID)
  INNER JOIN Tournaments
    ON  Tournaments.TourneyID =
        Tourney_Matches.TourneyID
  WHERE Tournaments.TourneyLocation =
        'Thunderbird Lanes'
  AND   Bowler_Scores.RawScore >= 170)
AS BowlerTbird
INNER JOIN
  (SELECT DISTINCT Bowlers.BowlerID,
  CONCAT(Bowlers.BowlerLastName, ', ', Bowlers.BowlerFirstName) AS BowlerFullName
  FROM ((Bowlers
  INNER JOIN Bowler_Scores
    ON  Bowlers.BowlerID =
        Bowler_Scores.BowlerID)
  INNER JOIN Tourney_Matches
    ON  Tourney_Matches.MatchID =
        Bowler_Scores.MatchID)
  INNER JOIN Tournaments
    ON  Tournaments.TourneyID =
        Tourney_Matches.TourneyID
  WHERE Tournaments.TourneyLocation =
        'Bolero Lanes'
  AND   Bowler_Scores.RawScore >= 170)
AS BowlerBolero
ON BowlerTbird.BowlerID = BowlerBolero.BowlerID;
