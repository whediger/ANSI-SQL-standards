
INSERT INTO Tourney_Matches
      (TourneyID,
      Lanes,
      OddLaneTeamID,
      EvenLaneTeamID)
SELECT  MatchID.TourneyID,
        Tourney_Matches.Lanes,
        Tourney_Matches.OddLaneTeamID,
        Tourney_Matches.EvenLaneTeamID
FROM    (SELECT Tournaments.TourneyID
                FROM Tournaments
                WHERE Tournaments.TourneyDate BETWEEN '2013-01-01' AND '2013-12-31')
        AS MatchID,
        Tourney_Matches
WHERE   Tourney_Matches.TourneyID
        IN(SELECT Tournaments.TourneyID
          FROM  Tournaments
          WHERE Tournaments.TourneyDate BETWEEN '2012-01-01' AND '2012-12-31');
