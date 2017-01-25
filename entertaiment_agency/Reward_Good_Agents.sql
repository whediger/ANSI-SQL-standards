
UPDATE  Agents
SET     CommissionRate = (CommissionRate + 0.5)
WHERE   Agents.AgentID
        IN(SELECT Agent_Sales.AgentID
          FROM (SELECT  Engagements.AgentID,
                        SUM(Engagements.ContractPrice) AS Total
                FROM Engagements
                GROUP BY Engagements.AgentID)
                AS Agent_Sales
          WHERE Agent_Sales.Total > 20000);
