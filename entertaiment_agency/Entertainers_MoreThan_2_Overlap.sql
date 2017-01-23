
SELECT Overlapped.EntStageName AS Ent_Overlapped_More_Than_2_Times
FROM
    (SELECT  Entertainers.EntStageName
    FROM Entertainers
    INNER JOIN Engagements AS Eng1
      ON  Entertainers.EntertainerID =
          Eng1.EntertainerID
    INNER JOIN Engagements AS Eng2
      ON  Eng1.EntertainerID =
          Eng2.EntertainerID
    WHERE Eng1.EngagementNumber != Eng2.EngagementNumber
    AND   Eng2.StartDate <=
          Eng1.EndDate
    AND   Eng2.EndDate >=
          Eng1.StartDate
    AND   Eng2.StartTime <=
          Eng1.StopTime
    AND   Eng2.StopTime >=
          Eng1.StartTime
    GROUP BY  Entertainers.EntStageName)
    AS Overlapped
GROUP BY Overlapped.EntStageName
HAVING COUNT(Overlapped.EntStageName) > 2;
