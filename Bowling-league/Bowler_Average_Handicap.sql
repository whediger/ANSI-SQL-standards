
SELECT CONCAT(Bowlers.BowlerFirstName, ' ', Bowlers.BowlerLastName) AS Bowler_Name,
      CAST(AVG(Bowler_Scores.RawScore) AS UNSIGNED) AS Average_Score,
      (SELECT
        CAST((.9
          * (200
            - CAST(
                ROUND(AVG(Bowler_Scores.RawScore))
                AS UNSIGNED
              )
            )
        ) AS UNSIGNED)
      )
      AS Handicap
FROM Bowlers
INNER JOIN Bowler_Scores
  ON  Bowlers.BowlerID =
      Bowler_Scores.BowlerID
GROUP BY Bowler_Name;
