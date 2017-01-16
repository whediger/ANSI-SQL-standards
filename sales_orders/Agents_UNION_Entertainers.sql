
SELECT CONCAT(Agents.AgtLastName, ', ', Agents.AgtFirstName) AS Name,
      'Agent' AS Type
FROM Agents

UNION

SELECT Entertainers.EntStageName,
      'Entertainer' AS Name
FROM  Entertainers;
