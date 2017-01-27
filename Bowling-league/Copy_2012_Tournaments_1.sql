
INSERT INTO Tournaments
      (TourneyID,
      TourneyDate,
      TourneyLocation)
SELECT  (Tournaments.TourneyID + 25) AS TourneyID,
        DATE_ADD(TourneyDate, INTERVAL 1 YEAR) AS TourneyDate,
        TourneyLocation
FROM    Tournaments
WHERE   Tournaments.TourneyDate BETWEEN '2012-01-01' AND '2012-12-31';
