
DELETE FROM Musical_Styles
WHERE StyleID NOT IN
(SELECT StyleID
FROM Entertainer_Styles);
