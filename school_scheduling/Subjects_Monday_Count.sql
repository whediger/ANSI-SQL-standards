
SELECT  Subjects.SubjectName,
        (SELECT COUNT(*)
        FROM Classes
        WHERE MondaySchedule = 1
        AND Classes.SubjectID =
            Subjects.SubjectID)
        AS MondayCount
FROM Subjects;
