
SELECT CONCAT(Agents.AgtFirstName, ' ', Agents.AgtLastName) AS Agent_Name,
  Entertainers.EntStageName, Agents.AgtZipCode AS ZIP_CODE
FROM Agents
  INNER JOIN Entertainers
    ON  Agents.AgtZipCode =
        Entertainers.EntZipCode;
