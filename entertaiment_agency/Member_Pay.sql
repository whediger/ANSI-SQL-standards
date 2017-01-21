

SELECT Entertainers.EntertainerID,
      Members.MbrFirstName,
      Members.MbrLastName,
      SUM(Engagements.ContractPrice)/
        (SELECT COUNT(*)
        FROM Entertainer_Members AS EM2
        WHERE EM2.Status <> 3
        AND   EM2.EntertainerID =
              Entertainers.EntertainerID)
        AS MemberPay
FROM ((Members
INNER JOIN Entertainer_Members
  ON  Members.MemberID =
      Entertainer_Members.MemberID)
INNER JOIN Entertainers
  ON  Entertainers.EntertainerID =
      Entertainer_Members.EntertainerID)
INNER JOIN Engagements
  ON  Entertainers.EntertainerID =
      Engagements.EntertainerID
WHERE Entertainer_Members.Status <> 3
GROUP BY  Entertainers.EntertainerID,
          Members.MbrFirstName,
          Members.MbrLastName
ORDER BY  Members.MbrLastName;
