
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
WHERE Bowler_Scores.RawScore >= 165
AND   Tournaments.TourneyLocation LIKE '%Thunderbird%'

UNION

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
WHERE Bowler_Scores.RawScore >= 185
AND   Tournaments.TourneyLocation LIKE '%Bolero%';
