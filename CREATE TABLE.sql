CREATE DATABASE CounsellingProject
GO
USE CounsellingProject
GO

DROP DATABASE CounsellingProject

--------------------1) Creating Patient Table--------------------

CREATE TABLE Patient (
    Patient_ID INT NOT NULL IDENTITY(100,1),
    Patient_Name NVARCHAR(100) NOT NULL,
    Patient_Phone BIGINT NOT NULL, -- Put a check for Phone number Format
    Patient_Gender NVARCHAR(20),   -- Put a check (Male, Female, Other)
    Patient_DOB DATE,
    Patient_Address NVARCHAR(255),
	CONSTRAINT Patient_PK PRIMARY KEY (Patient_ID),
	CONSTRAINT CHK_Patient_Phone CHECK (Patient_Phone >= 1000000000 AND Patient_Phone <= 9999999999),
	CONSTRAINT CHK_Patient_Gender CHECK (Patient_Gender IN ('Male', 'Female', 'Other'))
);

-- DROP TABLE Patient
SELECT * FROM Patient;

--------------------2) Creating Therapist Table--------------------

CREATE TABLE Therapist(
    Therapist_ID INT NOT NULL IDENTITY(1000,1),
    Therapist_Name NVARCHAR(100),
    Therapist_Phone BIGINT,  -- Put a check for Phone number Format
    Therapist_LicenseDetails NVARCHAR(255),
    Therapist_Specialty NVARCHAR(100),
	CONSTRAINT Therapist_PK PRIMARY KEY (Therapist_ID),
	CONSTRAINT CHK_Therapist_Phone CHECK (Therapist_Phone >= 1000000000 AND Therapist_Phone <= 9999999999),
	CONSTRAINT UNI_Therapist_LicenseDetails UNIQUE (Therapist_LicenseDetails), 
	CONSTRAINT CHK_Therapist_Specialty CHECK (Therapist_Specialty IN ('Addiction psychiatry', 'Forensic psychiatry', 
	'Neuropsychiatry', 'Occupational psychiatry', 'Psychosomatic medicine'))
);

-- DROP TABLE Therapist
SELECT * FROM Therapist;

--------------------3) Creating Session Table--------------------

CREATE TABLE Session(
    Session_ID INT NOT NULL IDENTITY(2000,1),
	Patient_ID INT,
	Therapist_ID INT,
    Session_Date DATE,
    Session_Time TIME,
    Session_Duration INT, -- Duration in minutes
    Session_Notes NVARCHAR(MAX),
	CONSTRAINT Session_PK PRIMARY KEY (Session_ID),
	CONSTRAINT Session_FK1 FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
	CONSTRAINT Session_FK2 FOREIGN KEY (Therapist_ID) REFERENCES Therapist(Therapist_ID)  
);

-- DROP TABLE Session 
SELECT * FROM Session;

--------------------4) Creating SlotAvailabilty Table--------------------

CREATE TABLE SlotAvailabilty(
    Slot_ID INT NOT NULL IDENTITY(3000,1),
	Therapist_ID INT,
    Slot_Date DATE,
    Slot_Time TIME,
	Slot_IsAvailable BIT,
	CONSTRAINT Slot_PK PRIMARY KEY (Slot_ID),
    CONSTRAINT Slot_FK1 FOREIGN KEY (Therapist_ID) REFERENCES Therapist(Therapist_ID)
);

-- DROP TABLE SlotAvailabilty
SELECT * FROM SlotAvailabilty;

--------------------5) Creating Feedback Table--------------------

CREATE TABLE Feedback (
    Feedback_ID INT NOT NULL IDENTITY(4000,1),
    Session_ID INT,
	Ratings INT, -- Assuming the ratings are integers (e.g., 1 to 5)
    Comments NVARCHAR(MAX),
	CONSTRAINT Feedback_PK PRIMARY KEY (Feedback_ID),
    CONSTRAINT Feedback_FK FOREIGN KEY ([Session_ID]) REFERENCES Session([Session_ID]),
	CONSTRAINT CHK_Ratings CHECK (Ratings IN (1,2,3,4,5))
);

-- DROP TABLE Feedback
SELECT * FROM Feedback;

--------------------6) Creating Note Table--------------------

CREATE TABLE Note(
    Note_ID INT NOT NULL IDENTITY(5000,1),
	Session_ID INT,
    Date_Created DATE,
    Pointers NVARCHAR(MAX),
	CONSTRAINT Note_PK PRIMARY KEY (Note_ID),
    CONSTRAINT Note_FK FOREIGN KEY ([Session_ID]) REFERENCES Session([Session_ID])
);

-- DROP TABLE Note
SELECT * FROM Note;

-------------------7) Creating TreatmentPlan Table--------------------

CREATE TABLE TreatmentPlan (
    Treatment_ID INT NOT NULL IDENTITY(6000,1),
	Session_ID INT,
    Milestones VARCHAR(255),
    Diagnosis VARCHAR(255),
    Intervention VARCHAR(255),
	CONSTRAINT Treatment_PK PRIMARY KEY (Treatment_ID),
    CONSTRAINT Tretment_FK FOREIGN KEY ([Session_ID]) REFERENCES Session([Session_ID])
);

-- DROP TABLE TreatmentPlan
SELECT * FROM TreatmentPlan;

-------------------8) Creating Progress Table--------------------

CREATE TABLE Progress (
    Progress_ID INT NOT NULL IDENTITY(7000,1),
	Session_ID INT,
    Content TEXT,
    Date_Created DATE,
    Progress_Update TEXT,
	CONSTRAINT Progress_PK PRIMARY KEY (Progress_ID),
    CONSTRAINT Progress_FK FOREIGN KEY ([Session_ID]) REFERENCES Session([Session_ID])
);

-- DROP TABLE Progress
SELECT * FROM Progress;

-------------------9) Creating Medication Table--------------------

CREATE TABLE Medication (
    Medication_ID INT NOT NULL IDENTITY(8000,1),
	Session_ID INT,
    Medicine_Name VARCHAR(255),
    Prescription_Reason VARCHAR(255),
    Dosage VARCHAR(50),
	CONSTRAINT Medication_PK PRIMARY KEY (Medication_ID),
    CONSTRAINT Medication_FK FOREIGN KEY ([Session_ID]) REFERENCES Session([Session_ID])
);

-- DROP TABLE Medication
SELECT * FROM Medication;

-------------------10) Creating MedicalHistory Table--------------------

CREATE TABLE MedicalHistory (
    MedHistory_ID INT NOT NULL IDENTITY(9000, 1),
	Patient_ID INT,
	Therapist_ID INT,
    Referred_By VARCHAR(255),
    Allergies VARCHAR(255),
    Medication VARCHAR(255),
    Emergency_Contact VARCHAR(255),
	CONSTRAINT MedicalHistory_PK PRIMARY KEY (MedHistory_ID),
	CONSTRAINT MedicalHistory_FK1 FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
	CONSTRAINT MedicalHistory_FK2 FOREIGN KEY (Therapist_ID) REFERENCES Therapist(Therapist_ID)
);

-- DROP TABLE MedicalHistory
SELECT * FROM MedicalHistory;
   
-------------------11) Creating Bill Table--------------------

CREATE TABLE Bill (
    Bill_ID INT NOT NULL IDENTITY(10000, 1),
	[Session_ID] INT,
    Billing_Date DATE,
	CONSTRAINT Bill_PK PRIMARY KEY (Bill_ID),
    CONSTRAINT Bill_FK FOREIGN KEY ([Session_ID]) REFERENCES Session([Session_ID])
);

--DROP TABLE Bill
SELECT * FROM Bill;

-------------------------------------------------------------------------------------------------------------------------------

