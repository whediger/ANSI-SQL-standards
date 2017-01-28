
DELETE FROM Subjects
WHERE SubjectID NOT IN
(SELECT SubjectID
FROM Classes);
