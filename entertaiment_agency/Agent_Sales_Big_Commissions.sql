
SELECT CONCAT(Agents.AgtLastName, ', ', Agents.AgtFirstName) AS Agents_Name,
      SUM(Engagements.ContractPrice) AS Total_Contract_Price,
      ROUND(SUM(Engagements.ContractPrice * Agents.CommissionRate)) AS Total_Commissions
FROM Agents
INNER JOIN Engagements
  ON  Agents.AgentID =
      Engagements.AgentID
GROUP BY Agents_Name
HAVING Total_Commissions > 1000;
