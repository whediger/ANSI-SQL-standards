
SELECT CONCAT(Bowlers.BowlerFirstName, ' ', Bowlers.BowlerLastName) AS Captains_Name,
      MAX(Bowler_Scores.RawScore) AS Personal_Record,
      Team_Scores.T_High_Score
FROM Bowlers
INNER JOIN Teams
  ON  Bowlers.BowlerID =
      Teams.CaptainID
INNER JOIN Bowler_Scores
  ON  Teams.CaptainID =
      Bowler_Scores.BowlerID
INNER JOIN (SELECT  MAX(BS.RawScore) AS T_High_Score,
                    T.TeamID
            FROM Teams AS T
            INNER JOIN Bowlers AS B
              ON  T.TeamID =
                  B.TeamID
            INNER JOIN Bowler_Scores AS BS
              ON  B.BowlerID =
                  BS.BowlerID
            GROUP BY  T.TeamID)
            AS Team_Scores
  ON  Team_Scores.TeamID =
      Teams.TeamID
GROUP BY  Captains_Name,
          Team_Scores.T_High_Score
HAVING  Personal_Record
        > Team_Scores.T_High_Score;
