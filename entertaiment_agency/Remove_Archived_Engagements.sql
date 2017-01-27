
DELETE FROM Engagements
WHERE EngagementNumber IN
(SELECT EngagementNumber
FROM Engagements_Archive);
