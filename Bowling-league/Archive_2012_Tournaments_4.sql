
INSERT INTO Bowler_Scores_Archive
      (MatchID,
      GameNumber,
      BowlerID,
      RawScore,
      HandiCapScore,
      WonGame)
SELECT *
FROM Bowler_Scores;
