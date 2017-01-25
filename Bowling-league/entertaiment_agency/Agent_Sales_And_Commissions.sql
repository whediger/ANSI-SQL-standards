
SELECT CONCAT(Agents.AgtFirstName, ' ', Agents.AgtLastName) AS Agent_Name,
      SUM(Engagements.ContractPrice) AS Contract_Price_Total,
      SUM(Engagements.ContractPrice
          * Agents.CommissionRate) AS Total_Commissions
FROM Agents
INNER JOIN Engagements
  ON  Agents.AgentID =
      Engagements.AgentID
GROUP BY  Agent_Name;
