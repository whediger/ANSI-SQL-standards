
UPDATE Engagements
SET Engagements.ContractPrice =
    ROUND(1.15 * (EndDate - StartDate + 1) *
      (SELECT EntPricePerDay
      FROM Entertainers
      WHERE Entertainers.EntertainerID =
            Engagements.EntertainerID), 0);
