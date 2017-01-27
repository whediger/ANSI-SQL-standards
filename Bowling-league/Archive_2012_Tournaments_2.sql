
INSERT INTO Tourney_Matches_Archive
      (MatchID,
      TourneyID,
      Lanes,
      OddLaneTeamID,
      EvenLaneTeamID)
SELECT  *
FROM Tourney_Matches;
