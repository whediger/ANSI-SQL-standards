
SELECT  Tournaments.TourneyLocation,
        Tournaments.TourneyDate,
        Tourney_Matches.MatchID,
        Teams.TeamName,
        CONCAT(Bowlers.BowlerLastName, ', ', Bowlers.BowlerFirstName) AS Captain,
        'Odd Lane' AS Lane
FROM ((Tournaments
INNER JOIN  Tourney_Matches
  ON  Tournaments.TourneyID =
      Tourney_Matches.TourneyID)
INNER JOIN  Teams
  ON  Teams.TeamID =
      Tourney_Matches.OddLaneTeamID)
INNER JOIN  Bowlers
  ON  Bowlers.BowlerID =
      Teams.CaptainID

UNION ALL

SELECT  Tournaments.TourneyLocation,
        Tournaments.TourneyDate,
        Tourney_Matches.MatchID,
        Teams.TeamName,
        CONCAT(Bowlers.BowlerLastName, ', ', Bowlers.BowlerFirstName) AS Captain,
        'Even Lane' AS Lane
FROM ((Tournaments
INNER JOIN  Tourney_Matches
  ON  Tournaments.TourneyID =
      Tourney_Matches.TourneyID)
INNER JOIN  Teams
  ON  Tourney_Matches.EvenLaneTeamID =
      Teams.TeamID)
INNER JOIN  Bowlers
  ON  Bowlers.BowlerID =
      Teams.CaptainID

ORDER BY  2, 3;
