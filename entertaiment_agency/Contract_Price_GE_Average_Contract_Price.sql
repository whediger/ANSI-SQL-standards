

SELECT Engagements.EngagementNumber AS Engage_Num_Of_Price_GE_Average
FROM Engagements
WHERE Engagements.ContractPrice >
      (SELECT AVG(ContractPrice)
      FROM Engagements);
