USE hospital_management;

-- View all Doctors
SELECT * FROM Doctor;

-- View all Patients
SELECT * FROM Patient;

-- View all Appointments
SELECT * FROM Appointment;

-- View all Payments
SELECT * FROM Payment;

-- Join: Patient with Doctor and Appointment details
SELECT 
    p.Patient_Name,
    d.Doctor_Name,
    d.Specialization,
    a.Appointment_Date,
    a.Status
FROM Appointment a
JOIN Patient p ON a.Patient_ID = p.Patient_ID
JOIN Doctor d ON a.Doctor_ID = d.Doctor_ID;

-- Total revenue generated
SELECT SUM(Amount) AS Total_Revenue
FROM Payment;

-- Completed Appointments
SELECT * FROM Appointment
WHERE Status = 'Completed';

