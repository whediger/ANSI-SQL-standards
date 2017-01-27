
INSERT INTO Customers
      (CustomerID,
      CustFirstName,
      CustLastName,
      CustStreetAddress,
      CustCity,
      CustState,
      CustZipCode,
      CustPhoneNumber)
SELECT
    Agents.AgentID,
    Agents.AgtFirstName,
    Agents.AgtLastName,
    Agents.AgtStreetAddress,
    Agents.AgtCity,
    Agents.AgtState,
    Agents.AgtZipCode,
    Agents.AgtPhoneNumber
FROM Agents
WHERE Agents.AgtFirstName = 'Marianne'
AND   Agents.AgtLastName = 'Wier';
