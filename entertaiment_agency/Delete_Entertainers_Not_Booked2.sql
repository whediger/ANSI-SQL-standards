
DELETE FROM Entertainers
WHERE EntertainerID NOT IN
(SELECT EntertainerID
FROM Engagements);
