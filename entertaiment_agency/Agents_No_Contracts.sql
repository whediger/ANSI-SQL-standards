
SELECT CONCAT(Agents.AgtFirstName, ' ', Agents.AgtLastName) AS Agent_No_Contracts
FROM  Agents
LEFT OUTER JOIN Engagements
  On  Agents.AgentID =
      Engagements.AgentID
WHERE Engagements.AgentID IS NULL;
