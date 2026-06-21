USE SAFWA_MOVIES
GO

--List the titles of all movies released after 01 January 2023.
SELECT *
FROM Movie
WHERE Mov_ReleaseDate > '2023-01-01'
