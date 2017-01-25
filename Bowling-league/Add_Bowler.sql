
INSERT INTO Bowlers
      (BowlerLastName, BowlerFirstName,
      BowlerAddress, BowlerCity,
      BowlerState, BowlerZip,
      BowlerPhoneNumber, TeamID,
      BowlerTotalPins, BowlerGamesBowled,
      BowlerCurrentAverage, BowlerCurrentHcp)
    SELECT Bowlers.BowlerLastName, 'Mathew',
      Bowlers.BowlerAddress, Bowlers.BowlerCity,
      Bowlers.BowlerState, Bowlers.BowlerZip,
      Bowlers.BowlerPhoneNumber, Bowlers.TeamID,
      0, 0,
      0, 0
    FROM Bowlers
    WHERE (Bowlers.BowlerLastName = 'Patterson')
    AND   (Bowlers.BowlerFirstName = 'Neil');
