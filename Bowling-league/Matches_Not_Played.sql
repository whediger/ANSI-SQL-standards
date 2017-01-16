
SELECT Tourney_Matches.TourneyID
FROM Tourney_Matches
LEFT OUTER JOIN Match_Games
  ON  Tourney_Matches.MatchID =
      Match_Games.MatchID
WHERE Match_Games.MatchID IS NULL;
