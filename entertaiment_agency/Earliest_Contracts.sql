
SELECT SUM(ContractPrice) AS TotalBookedValue
FROM  Engagements
WHERE StartDate
      BETWEEN '2012-10-01' AND '2012-10-31';
