

SELECT Tournaments.TourneyLocation
FROM Tournaments
WHERE Tournaments.TourneyDate =
      (SELECT MIN(Tournaments.TourneyDate)
      FROM Tournaments);
