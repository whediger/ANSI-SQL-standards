
SELECT  Tournaments.TourneyID,
        Tournaments.TourneyLocation,
        Tourney_Matches.MatchID,
        Teams.TeamName,
        SUM(Bowler_Scores.HandiCapScore) AS TotHandiCapScore
FROM ((((Tournaments
INNER JOIN Tourney_Matches
  ON  Tournaments.TourneyID =
      Tourney_Matches.TourneyID)
INNER JOIN Match_Games
  ON  Tourney_Matches.MatchID =
      Match_Games.MatchID)
INNER JOIN Bowler_Scores
  ON  (Match_Games.MatchID = Bowler_Scores.MatchID)
      AND
      (Match_Games.GameNumber = Bowler_Scores.GameNumber))
INNER JOIN Bowlers
  ON  Bowlers.BowlerID =
      Bowler_Scores.BowlerID)
INNER JOIN Teams
  ON  Teams.TeamID =
      Bowlers.TeamID
GROUP BY Tournaments.TourneyLocation,
      Tourney_Matches.MatchID,
      Teams.TeamName;
