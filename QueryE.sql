USE SAFWA_MOVIES
GO

--Which studio(s) (by name) released the shortest film?
SELECT s.Stu_Name
FROM Studio S
JOIN Movie m
ON  s.Stu_ID = m.Stu_ID 
where m.Mov_Duration = (SELECT MIN(Mov_Duration) FROM Movie);

