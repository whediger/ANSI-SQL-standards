
SELECT  Entertainers.EntStageName,
        (SELECT COUNT(EntertainerID)
        FROM Engagements
        WHERE Entertainers.EntertainerID =
              Engagements.EntertainerID)
        AS Engagement_Count
FROM Entertainers;
