
SELECT Entertainers.EntStageName AS Entertainer_StageName,
      Engagements.EngagementNumber
FROM  Entertainers
  LEFT OUTER JOIN Engagements
    ON  Entertainers.EntertainerID =
        Engagements.EntertainerID;
