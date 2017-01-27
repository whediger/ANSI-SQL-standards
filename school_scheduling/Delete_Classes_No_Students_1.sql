
DELETE FROM Faculty_Classes
WHERE ClassID NOT IN
(SELECT ClassID
FROM Student_Schedules);
