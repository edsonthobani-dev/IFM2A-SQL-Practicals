
USE SSH_Financial
GO


-- Advisors
INSERT INTO Advisor (AdvisorID, FirstName, LastName, RegistrationNumber)
VALUES
(1, 'Sipho', 'Dlamini', '1234567'),
(2, 'Thandi', 'Nkosi', '2345678'),
(3, 'Bongani', 'Zulu', '3456789'),
(4, 'Nomsa', 'Mthembu', '4567890'),
(5, 'Lungelo', 'Ndlovu', '5678901');

-- Clients
INSERT INTO Client (ClientID, FirstName, LastName, ContactNumber)
VALUES
(1, 'Siyanda', 'Mkhize', '0821234567'),
(2, 'Nompilo', 'Buthelezi', '0839876543'),
(3, 'Mlungisi', 'Cele', '0611112222'),
(4, 'Zanele', 'Hadebe', '0723334444'),
(5, 'Mpendulo', 'Ntuli', '0845556666'),
(6, 'Hlengiwe', 'Majola', '0716667777');

-- Consultations
INSERT INTO Consultation (ConsultationID, ConsultationDate, ConsultationTime, AdvisorID, ClientID)
VALUES
(1,  '2026-05-12', '09:00:00', 1, 1),
(2,  '2026-05-12', '10:00:00', 2, 2),
(3,  '2026-05-13', '11:00:00', 1, 3),
(4,  '2026-05-13', '14:00:00', 3, 4),
(5,  '2026-05-14', '09:30:00', 2, 5),
(6,  '2026-05-14', '13:00:00', 4, 6),
(7,  '2026-05-15', '10:00:00', 1, 1),
(8,  '2026-05-15', '11:30:00', 5, 2),
(9,  '2026-05-16', '09:00:00', 3, 3),
(10, '2026-05-16', '15:00:00', 4, 4),
(11, '2026-04-01', '09:00:00', 1, 5),
(12, '2026-04-05', '10:00:00', 2, 6),
(13, '2026-04-10', '11:00:00', 3, 1),
(14, '2026-04-15', '14:00:00', 1, 2),
(15, '2026-04-20', '09:00:00', 5, 3);

-- Invoices
INSERT INTO Invoice (InvoiceID, ConsultationID, Amount, Statuss)
VALUES
(1,  1,  1500.00, 'Unpaid'),
(2,  2,  2000.00, 'Unpaid'),
(3,  3,  1800.00, 'Paid'),
(4,  4,  2500.00, 'Unpaid'),
(5,  5,  1200.00, 'Paid'),
(6,  6,  3000.00, 'Unpaid'),
(7,  7,  1500.00, 'Unpaid'),
(8,  8,  2200.00, 'Paid'),
(9,  9,  1900.00, 'Unpaid'),
(10, 10, 2800.00, 'Unpaid'),
(11, 11, 1600.00, 'Unpaid'),
(12, 12, 2100.00, 'Unpaid');