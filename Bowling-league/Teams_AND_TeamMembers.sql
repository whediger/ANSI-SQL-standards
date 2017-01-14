
SELECT Teams.TeamName, 
  CONCAT(Bowlers.BowlerFirstName, ' ', Bowlers.BowlerLastName) AS Bowler_Name
FROM Bowlers
INNER JOIN Teams
  ON  Bowlers.TeamID =
      Teams.TeamID;
