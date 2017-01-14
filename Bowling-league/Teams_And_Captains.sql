
SELECT Teams.TeamName, CONCAT(Bowlers.BowlerLastName, ' ', Bowlers.BowlerFirstName) AS CaptainName
FROM Teams
INNER JOIN Bowlers
  ON Teams.CaptainID = Bowlers.BowlerID;
