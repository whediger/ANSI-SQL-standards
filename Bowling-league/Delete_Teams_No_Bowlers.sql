
DELETE FROM Teams
WHERE TeamID NOT IN
(SELECT TeamID
FROM Bowlers);
