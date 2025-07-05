SELECT 
    CASE
        WHEN g.Grade < 8 THEN NULL
        ELSE s.Name
    END AS StudentName,
    g.Grade AS StudentGrade,
    s.Marks AS StudentMarks
FROM Students AS s
INNER JOIN Grades AS g
    ON s.Marks BETWEEN g.Min_Mark AND g.Max_Mark
ORDER BY
    g.Grade DESC,
    CASE
        WHEN g.Grade >= 8 THEN s.Name
        ELSE CAST(s.Marks AS CHAR)
    END ASC;