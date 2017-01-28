
DELETE FROM Members
WHERE MemberID NOT IN
(SELECT MemberID
FROM Entertainer_Members);
