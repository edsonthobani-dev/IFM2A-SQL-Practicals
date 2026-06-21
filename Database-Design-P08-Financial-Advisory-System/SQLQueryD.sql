USE SSH_Financial
GO

--Only include consultations scheduled for the next week. 
SELECT 
    DATENAME(WEEKDAY, c.ConsultationDate) AS Day,
    a.FirstName + ' ' + a.LastName AS Financial_Advisor,
    cl.FirstName + ' ' + cl.LastName AS Client,
    CONVERT(VARCHAR, c.ConsultationTime, 100) AS Time
FROM Consultation c
JOIN Advisor a 
ON c.AdvisorID = a.AdvisorID
JOIN Client cl 
ON c.ClientID = cl.ClientID
WHERE c.ConsultationDate BETWEEN '2026-05-11' AND '2026-05-17'
ORDER BY c.ConsultationDate, c.ConsultationTime;
