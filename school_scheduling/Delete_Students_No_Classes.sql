
DELETE FROM Students
WHERE StudentID NOT IN
(SELECT StudentID
FROM Student_Schedules);
