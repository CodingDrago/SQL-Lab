USE hospital_management;

-- Insert Doctors
INSERT INTO Doctor (Doctor_Name, Specialization, Contact_Number, Email, Address)
VALUES 
('Dr. Rajesh Kumar', 'Cardiologist', '9876543210', 'rajesh.kumar@gmail.com', 'Chennai'),
('Dr. Anjali Sharma', 'Dermatologist', '9876543211', 'anjali.sharma@gmail.com', 'Bangalore'),
('Dr. Vikram Reddy', 'Orthopedic', '9876543212', 'vikram.reddy@gmail.com', 'Hyderabad'),
('Dr. Sneha Iyer', 'Neurologist', '9876543213', 'sneha.iyer@gmail.com', 'Mumbai'),
('Dr. Arjun Mehta', 'Pediatrician', '9876543214', 'arjun.mehta@gmail.com', 'Delhi');

-- Insert Patients
INSERT INTO Patient (Patient_Name, Date_Of_Birth, Gender, Contact_Number, Email)
VALUES
('Rohan Verma', '2002-05-14', 'Male', '9123456780', 'rohan.verma@gmail.com'),
('Priya Nair', '2001-08-22', 'Female', '9123456781', 'priya.nair@gmail.com'),
('Karthik Rao', '2003-01-10', 'Male', '9123456782', 'karthik.rao@gmail.com'),
('Meera Joshi', '2000-12-05', 'Female', '9123456783', 'meera.joshi@gmail.com'),
('Aditya Singh', '2002-03-18', 'Male', '9123456784', 'aditya.singh@gmail.com');

-- Insert Appointments
INSERT INTO Appointment (Patient_ID, Doctor_ID, Appointment_Date, Symptoms, Status)
VALUES
(1, 2, '2026-02-20 10:00:00', 'Skin rashes and itching', 'Scheduled'),
(2, 1, '2026-02-21 11:30:00', 'Chest pain and shortness of breath', 'Scheduled'),
(3, 3, '2026-02-22 09:15:00', 'Knee pain while walking', 'Completed'),
(4, 4, '2026-02-23 16:00:00', 'Frequent headaches and dizziness', 'Scheduled'),
(5, 5, '2026-02-24 14:45:00', 'Fever and cold symptoms', 'Completed');

-- Insert Payments
INSERT INTO Payment (Appointment_ID, Amount, Payment_Mode, Payment_Date)
VALUES
(1, 500.00, 'UPI', '2026-02-20 10:30:00'),
(2, 800.00, 'Card', '2026-02-21 12:00:00'),
(3, 600.00, 'Cash', '2026-02-22 09:45:00'),
(4, 700.00, 'NetBanking', '2026-02-23 16:30:00'),
(5, 450.00, 'UPI', '2026-02-24 15:00:00');
