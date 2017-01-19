
SELECT CONCAT(Bowlers.BowlerFirstName, ' ', Bowlers.BowlerLastName) AS FullName,
      (SELECT COUNT(*)
      FROM  Bowler_Scores
      WHERE Bowler_Scores.BowlerID =
            Bowlers.BowlerID)
      AS Game_Count
FROM Bowlers;
