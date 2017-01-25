
INSERT INTO Engagements
      (CustomerID, EntertainerID, AgentID,
      StartDate, EndDate,
      StartTime, StopTime,
      ContractPrice)
    SELECT Customers.CustomerID,
      Entertainers.EntertainerID, Agents.AgentID,
      '2013-08-15', '2013-08-16',
      '19:00:00', '23:00:00',
      ROUND(EntPricePerDay * 2 * 1.15, 0)
    FROM Customers, Entertainers, Agents
    WHERE (Customers.CustFirstName = 'Matt')
    AND   (Customers.CustLastName = 'Berg')
    AND   (Entertainers.EntStageName = 'Jazz Persuasion')
    AND   (Agents.AgtFirstName = 'Karen')
    AND   (Agents.AgtLastName = 'Smith');
