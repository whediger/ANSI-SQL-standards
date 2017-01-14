
SELECT Tournaments.TourneyID AS Tourney,
  Tournaments.TourneyLocation AS Location,
  Tourney_Matches.MatchID, Tourney_Matches.Lanes,
  OddTeam.TeamName AS OddLaneTeam,
  EvenTeam.TeamName AS EvenLaneTeam,
  Match_Games.GameNumber AS GameNo,
  Winner.TeamName AS Winner
FROM ((((Tournaments
  INNER JOIN Tourney_Matches
    ON Tournaments.TourneyID = Tourney_Matches.TourneyID)
  INNER JOIN Teams AS OddTeam
    ON OddTeam.TeamID = Tourney_Matches.OddLaneTeamID)
  INNER JOIN Teams AS EvenTeam
    ON EvenTeam.TeamID = Tourney_Matches.EvenLaneTeamID)
  INNER JOIN Match_Games
    ON Match_Games.MatchID = Tourney_Matches.MatchID)
  INNER JOIN Teams AS Winner
    ON Winner.TeamID = Match_Games.WinningTeamID;
