USE SSH_Financial
GO

-- (Hint: Start by creating a query that does not group by client)
SELECT 
    cl.FirstName + ' ' + cl.LastName AS Client,
    i.Amount AS Unpaid,
    i.Amount * DATEDIFF(DAY, c.ConsultationDate, GETDATE()) * 0.005 AS Interest,
    i.Amount + (i.Amount * DATEDIFF(DAY, c.ConsultationDate, GETDATE()) * 0.005) AS Amount_Due
FROM Invoice i
JOIN Consultation c 
ON i.ConsultationID = c.ConsultationID
JOIN Client cl 
ON c.ClientID = cl.ClientID
WHERE i.Statuss = 'Unpaid'
AND DATEDIFF(DAY, c.ConsultationDate, GETDATE()) > 28;


--a query that group by client
SELECT 
    cl.FirstName + ' ' + cl.LastName AS Client,
    SUM(i.Amount) AS Unpaid,
    SUM(i.Amount * DATEDIFF(DAY, c.ConsultationDate, GETDATE()) * 0.005) AS Interest,
    SUM(i.Amount + (i.Amount * DATEDIFF(DAY, c.ConsultationDate, GETDATE()) * 0.005)) AS Amount_Due
FROM Invoice i
JOIN Consultation c 
ON i.ConsultationID = c.ConsultationID
JOIN Client cl 
ON c.ClientID = cl.ClientID
WHERE i.Statuss = 'Unpaid'  AND DATEDIFF(DAY, c.ConsultationDate, GETDATE()) > 28
GROUP BY cl.ClientID, cl.FirstName, cl.LastName;