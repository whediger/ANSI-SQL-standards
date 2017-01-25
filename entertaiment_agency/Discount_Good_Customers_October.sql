
UPDATE Engagements
SET ContractPrice = (0.98 * ContractPrice)
WHERE EngagementNumber
      IN(SELECT EngagementNumber
        FROM (SELECT  E2.EngagementNumber, E2.CustomerID,
                      (SELECT SUM(E3.ContractPrice)
                      FROM Engagements AS E3
                      WHERE E3.StartDate BETWEEN '2012-10-01' AND '2012-10-31'
                      AND   E2.CustomerID =
                            E3.CustomerID) AS Total
              FROM Engagements AS E2)
              AS Oct_Engage
        WHERE Oct_Engage.Total > 3000);
