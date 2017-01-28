
DELETE FROM Faculty_Subjects
WHERE SubjectID NOT IN
(SELECT SubjectID
FROM Classes);
