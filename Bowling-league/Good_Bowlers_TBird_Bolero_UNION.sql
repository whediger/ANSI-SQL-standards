
SELECT CONCAT(Bowlers.BowlerLastName, ' ', Bowlers.BowlerFirstName) AS FullName,
      'Tbird' AS Lanes
FROM  ((Bowlers
INNER JOIN  Bowler_Scores
  ON  Bowlers.BowlerID =
      Bowler_Scores.BowlerID)
INNER JOIN  Tourney_Matches
  ON  Bowler_Scores.MatchID =
      Tourney_Matches.MatchID)
INNER JOIN Tournaments
  ON  Tourney_Matches.TourneyID =
      Tournaments.TourneyID
WHERE Tournaments.TourneyLocation LIKE '%Thunderbird%'
AND   Bowler_Scores.RawScore >= 165

UNION ALL

SELECT CONCAT(Bowlers.BowlerLastName, ', ', Bowlers.BowlerFirstName) AS FullName,
      'Bolero' AS Lanes
FROM  ((Bowlers
INNER JOIN  Bowler_Scores
  ON  Bowlers.BowlerID =
      Bowler_Scores.BowlerID)
INNER JOIN  Tourney_Matches
  ON  Bowler_Scores.MatchID =
      Tourney_Matches.MatchID)
INNER JOIN Tournaments
  ON  Tourney_Matches.TourneyID =
      Tournaments.TourneyID
WHERE Tournaments.TourneyLocation LIKE '%Bolero%'
AND   Bowler_Scores.RawScore >= 150;
