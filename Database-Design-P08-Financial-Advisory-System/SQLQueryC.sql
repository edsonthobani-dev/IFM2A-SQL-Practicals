USE SSH_Financial
GO
-- give the name of the financial advisor who has given the most consultations
SELECT a.FirstName, a.LastName, COUNT(c.ConsultationID) AS TotalConsultations
FROM Advisor a
JOIN Consultation c ON a.AdvisorID = c.AdvisorID
GROUP BY a.AdvisorID, a.FirstName, a.LastName
HAVING COUNT(c.ConsultationID) = (
    SELECT MAX(ConsultationCount)
    FROM (
        SELECT COUNT(ConsultationID) AS ConsultationCount
        FROM Consultation
        GROUP BY AdvisorID
    ) AS Counts
);
