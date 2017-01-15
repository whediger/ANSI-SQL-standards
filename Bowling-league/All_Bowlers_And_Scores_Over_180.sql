
SELECT CONCAT(Bowlers.BowlerLastName, ' ', Bowlers.BowlerFirstName) AS Bowler_Name,
  TI.TourneyDate, TI.TourneyLocation, TI.MatchID, TI.RawScore
FROM Bowlers
LEFT OUTER JOIN
  (SELECT Tournaments.TourneyDate,
  Tournaments.TOurneyLocation,
  Bowler_Scores.MatchID,
  Bowler_Scores.BowlerID,
  Bowler_Scores.RawScore
  FROM (Bowler_Scores
  INNER JOIN Tourney_Matches
    ON  Bowler_Scores.MatchID =
        Tourney_Matches.MatchID)
  INNER JOIN Tournaments
    ON  Tournaments.TourneyID =
        Tourney_Matches.TourneyID
  WHERE Bowler_Scores.RawScore > 180)
  AS TI
ON Bowlers.BowlerID = TI.BowlerID;  
