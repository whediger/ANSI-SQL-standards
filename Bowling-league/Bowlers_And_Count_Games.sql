
SELECT CONCAT(Bowlers.BowlerFirstName, ' ', Bowlers.BowlerLastName) AS FullName,
      (SELECT COUNT(*)
      FROM  Bowler_Scores
      WHERE Bowler_Scores.BowlerID =
            Bowlers.BowlerID
      AND   Bowler_Scores.GameNumber IS NOT NULL)
      AS Game_Count
FROM Bowlers
WHERE Bowlers.BowlerLastName = 'Pundt'; 
