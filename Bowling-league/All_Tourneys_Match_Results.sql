
SELECT  Tournaments.TourneyDate,
        Tournaments.TourneyLocation,
        Match_Games.WinningTeamID
FROM Tournaments
LEFT OUTER JOIN Tourney_Matches
  ON  Tournaments.TourneyID =
      Tourney_Matches.TourneyID
LEFT OUTER JOIN Match_Games
  ON  Tourney_Matches.MatchID =
      Match_Games.MatchID
ORDER BY Tournaments.TourneyDate DESC;
