USE SAFWA_MOVIES
GO


--List, in alphabetic order, the titles of all movies made by studios based in South Africa
SELECT m.Mov_Title
FROM Movie m
JOIN Studio s
ON s.Stu_ID = m.Stu_ID
WHERE s.Stu_Country = 'SOUTH AFRICA' 
ORDER  BY s.Stu_Name ASC


