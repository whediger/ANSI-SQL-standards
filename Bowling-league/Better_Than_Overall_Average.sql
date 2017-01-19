

SELECT  Bowlers.BowlerLastName,
        Bowlers.BowlerLastName
FROM Bowlers
WHERE (SELECT AVG(RawScore)
FROM Bowler_Scores AS BS
WHERE BS.BowlerID =
      Bowlers.BowlerID)
>=(SELECT AVG(RawScore) FROM Bowler_Scores)
ORDER BY  Bowlers.BowlerLastName,
          Bowlers.BowlerFirstName;
