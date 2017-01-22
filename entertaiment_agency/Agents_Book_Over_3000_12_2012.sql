
SELECT  Agents.AgtFirstName,
        Agents.AgtLastName,
        SUM(engagements.ContractPrice)
        AS Total_Booked
FROM Agents
INNER JOIN Engagements
  ON  Agents.AgentID =
      Engagements.AgentID
WHERE Engagements.StartDate
BETWEEN '2012-12-01' AND '2012-12-31'
GROUP BY  Agents.AgtFirstName,
          Agents.AgtLastName
HAVING SUM(Engagements.ContractPrice) > 3000;
