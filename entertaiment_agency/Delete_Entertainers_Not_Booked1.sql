
DELETE FROM Entertainer_Members
WHERE EntertainerID NOT IN
(SELECT EntertainerID
FROM Engagements);
