
INSERT INTO Engagements
      (StartDate,
      EndDate,
      StartTime,
      StopTime,
      ContractPrice,
      CustomerID,
      AgentID,
      EntertainerID)

SELECT  '2013-08-01' AS StartDate,
        '2013-08-02' AS EndDate,
        '18:00:00' AS StartTime,
        '02:00:00' AS StopTime,
        E.ContractPrice,
        E.CustomerID,
        E.AgentID,
        E.EntertainerID
FROM    Engagements AS E
WHERE   E.StartDate = '2012-12-01'
AND     E.CustomerID
        IN(SELECT Customers.CustomerID
          FROM Customers
          WHERE Customers.CustFirstName = 'Doris'
          AND   Customers.CustLastName  = 'Hartwig');
