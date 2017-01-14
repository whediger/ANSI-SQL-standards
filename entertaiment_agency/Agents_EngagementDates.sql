
SELECT CONCAT(AgtFirstName, ' ', AgtLastName) AS AgentName,
  Engagements.EngagementNumber, Engagements.StartDate
FROM Agents
INNER JOIN Engagements
  ON  Agents.AgentID =
      Engagements.AgentID
ORDER BY Engagements.StartDate;
