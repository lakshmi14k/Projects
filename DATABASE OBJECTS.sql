USE CounsellingProject
GO

/* -----------------------------------------------------------------------------------------
  STORED PROCEDURES:
----------------------------------------------------------------------------------------- */

-- STORED PROCEDURE 1: 
--UPDATING BILLING DATE COLUMN OF THE BILL TABLE BASED ON SESSION_DATE

CREATE PROCEDURE RetrieveBillingDate 
    @sessionID INT,
    @sessionDate DATE OUTPUT
AS 
BEGIN 
    SELECT @sessionDate = Session_Date  
    FROM Session
    WHERE SESSION_ID = @sessionID    	
END

DECLARE @date DATE 
EXEC RetrieveBillingDate 2034, @sessionDate = @date OUTPUT;

UPDATE Bill 
    SET Billing_Date = @date
	WHERE SESSION_ID = 2034

	

SELECT * FROM Bill;

------------------------------------------------------------------------------------------------------------------------------------------

-- STORED PROCEDURE 2: 
-- GET THERAPIST SESSION COUNT

CREATE PROCEDURE GetTherapistSessionCount
    @TherapistID INT,
    @StartDate DATE,
    @EndDate DATE,
    @SessionCount INT OUTPUT
AS
BEGIN
    -- Calculate the session count
    SELECT
        @SessionCount = COUNT(*)
    FROM
        Session
    WHERE
        Therapist_ID = @TherapistID
        AND Session_Date BETWEEN @StartDate AND @EndDate;
END

-- COMMAND TO RUN THE STORED PROCEDURE:
DECLARE @OutputSessionCount INT;

-- COMMAND TO EXECUTE THE STORED PROCEDURE:
EXEC GetTherapistSessionCount 
    1006, '2023-09-01', '2023-12-30', 
    @SessionCount = @OutputSessionCount OUTPUT;

-- COMMAND TO DISPLAY OUTPUT:
SELECT 'Therapist Session Count: ' AS Message, @OutputSessionCount AS SessionCount;

------------------------------------------------------------------------------------------------------------------------------------------

-- STORED PROCEDURE 3: 
--GETTING UPCOMING APPOINTMENTS FOR A PATIENT:

CREATE PROCEDURE GetUpcomingAppointments
    @Patient_ID INT
AS
BEGIN
    DECLARE @CurrentDate DATE = GETDATE();
    -- COMMAND TO RETRIVE UPCOMING APPOINTMENTS FOR PATIENTS
    SELECT
        S.Session_ID,
        S.Session_Date,
        T.Therapist_Name AS TherapistName
    FROM
        Session S
        INNER JOIN Therapist T ON S.Therapist_ID = T.Therapist_ID
    WHERE
        S.Patient_ID = @Patient_ID
        AND S.Session_Date >= @CurrentDate
    ORDER BY
        S.Session_Date;
END
DECLARE @PatientID INT = 101; 
EXEC GetUpcomingAppointments @PatientID;

-----------------------------------------------------------------------------------------------------------------------------------------

-- STORED PROCEDURE 4: 
--TO CHECK SESSION CLASHES AND CALCULATE END TIME OF SESSION

CREATE PROCEDURE CheckSessionClash
    @TherapistID INT,
    @SessionDate DATE,
    @IsClash VARCHAR(50) OUTPUT,
    @EndTime TIME OUTPUT
AS
BEGIN
    DECLARE @ClashCount INT;
	DECLARE @StartTime TIME
	DECLARE @Duration INT
	select @StartTime=Session_Time,@Duration=Session_Duration from Session where Therapist_ID=@TherapistID
 
    -- CALCULATE END TIME BASED ON DURATION:
    SET @EndTime = DATEADD(MINUTE, @Duration, @StartTime);
 
   -- CHECKS FOR A CLASH BASED ON DATE:
    SELECT @ClashCount = COUNT(*)
    FROM Session
    WHERE Therapist_ID = @TherapistID
      AND Session_Date = @SessionDate
      AND(Session_Time >= Session_Time AND Session_Time < @EndTime);
 
    -- SETTING THE CLASH MESSAGE:
    IF @ClashCount > 0
        SET @IsClash = 'Slot is already booked';
END;
 
--SELECT * FROM Session; 
DECLARE @TherapistID INT = 1000;
DECLARE @SessionDate DATE = '2023-09-08'
DECLARE @IsClash VARCHAR(100);
DECLARE @EndTime TIME;
 
-- EXECUTING THE STORED PROCEDURE:
EXEC CheckSessionClash @TherapistID,@SessionDate, @IsClash OUTPUT,@EndTime OUTPUT;
 
-- DISPLAYING THE RESULT:
SELECT
    Therapist_ID, Session_Date, Session_Time, Session_Duration,
    @EndTime AS Calculated_End_Time,
    @IsClash AS Clash_Status
FROM
    Session
WHERE
    Therapist_ID = @TherapistID
    AND Session_Date = @SessionDate;

/* -----------------------------------------------------------------------------------------
 USER DEFINED FUNCTIONS:
----------------------------------------------------------------------------------------- */

--USER DEFINED FUNCTION 1 : 
--CALCULATING AGE OF PATIENT AS A COMPUTED COLUMN FROM DOB COLUMN OF PATIENT TABLE

CREATE FUNCTION dbo.CalculateAge
(
    @DateOfBirth DATE
)
RETURNS INT
AS
BEGIN
    DECLARE @CurrentDate DATE = GETDATE()
    DECLARE @Age INT

    -- CALCULATE THE AGE
    SET @Age = YEAR(@CurrentDate) - YEAR(@DateOfBirth)

    -- CHECK IF BIRTHDAY HAS OCCURED YET OR NOT
    IF (MONTH(@CurrentDate) < MONTH(@DateOfBirth) OR 
       (MONTH(@CurrentDate) = MONTH(@DateOfBirth) AND DAY(@CurrentDate) < DAY(@DateOfBirth)))
    BEGIN
        SET @Age = @Age - 1
    END

    RETURN @Age
END

-- EXAMPLE USAGE OF CALCULATE_AGE UDF:
SELECT Patient_ID, Patient_Name, Patient_Phone, Patient_Gender, Patient_DOB, dbo.CalculateAge(Patient_DOB) AS Age, Patient_Address FROM Patient; 

------------------------------------------------------------------------------------------------------------------------------------------

-- USER DEFINED FUNCTION 2 : 
--CALCULATING FEES AS A COMPUTED COLUMN FROM DURATION COLUMN OF SESSION TABEL INTO THE BILL TABLE.
SELECT * FROM Bill;

CREATE FUNCTION dbo.CalculateFees
(
    @duration INT
)
RETURNS Decimal(10, 2)
AS
BEGIN
	-- RATE PER MINUTE
	declare @minsRate Decimal(10, 2) = 1.25
	-- AMOUNT BASED ON DURATION
	declare @fees DECIMAL(10, 2)
    -- CALCULATING THE FEES
    SET @fees = @minsRate * @duration
    RETURN @fees
END

ALTER TABLE Bill ADD Fees Decimal(10, 2) 

UPDATE Bill SET Fees = dbo.CalculateFees(s.Session_Duration) FROM Bill b 
	JOIN SESSION s ON s.Session_ID = b.Session_ID 

	SELECT * FROM Bill;

/* SELECT b.*,dbo.CalculateFees(s.Session_Duration) AS Fees FROM bill b 
	join session s on s.Session_ID = b.Session_ID */

/*	----------------------------------------------------------------------------------------------------------
	VIEWS
---------------------------------------------------------------------------------------------------------- */

-- VIEW 1: 
--GETTING DETAILS FROM SESSION, THERAPIST AND NOTES TABLE:

CREATE VIEW SessionView AS
SELECT
    S.Session_ID,
    T.Therapist_Name,
    S.Session_Date,
    S.Session_Time,
    S.Session_Duration,
    N.Pointers
FROM
    Session S
JOIN
    Therapist T ON S.Therapist_ID = T.Therapist_ID
LEFT JOIN
    Note N ON S.Session_ID = N.Session_ID;

SELECT * FROM SessionView;

------------------------------------------------------------------------------------------------------------------------------------------

-- VIEW 2: 
--GETTING NUMBER OF SESSIONS FOR A THERAPIST AND AVERAGE RATINGS FOR THE THERAPIST BASED ON THE SESSIONS

CREATE VIEW TherapistSummaryView AS
SELECT
    T.Therapist_ID,
    T.Therapist_Name,
    COUNT(S.Session_ID) AS TotalSessions,
    AVG(F.Ratings) AS AverageRatings
FROM
    Therapist T
LEFT JOIN
    Session S ON T.Therapist_ID = S.Therapist_ID
LEFT JOIN
    Feedback F ON S.Session_ID = F.Session_ID
GROUP BY
    T.Therapist_ID, T.Therapist_Name;

SELECT * FROM TherapistSummaryView;

------------------------------------------------------------------------------------------------------------------------------------------

-- VIEW 3:
--TOTAL BILL FOR PATIENT

CREATE VIEW PatientBillSummaryView AS
SELECT
    P.Patient_ID,
    P.Patient_Name,
    SUM(B.Fees) AS TotalAmountPaid
FROM
    Patient P
JOIN
    Session S ON P.Patient_ID = S.Patient_ID
LEFT JOIN
    Bill B ON S.Session_ID = B.Session_ID
GROUP BY
    P.Patient_ID, P.Patient_Name;
	
SELECT * FROM PatientBillSummaryView;

/*	----------------------------------------------------------------------------------------------------------
	TRIGGERS
---------------------------------------------------------------------------------------------------------- */

-- TRIGGER 1:
--STORING THE SESSION DETAILS- PREVIOUS AND UPDATED.

CREATE TABLE Session_Log (
Session_ID INT,
Old_Session_Date DATE,
New_Session_Date DATE,
Updated_At DATE
);

SELECT * FROM Session_Log

CREATE TRIGGER trg_Session_Update
ON Session
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    IF UPDATE(Session_Date)
    BEGIN
        INSERT INTO Session_Log (Session_ID, Old_Session_Date, New_Session_Date, Updated_At)
        SELECT 
            deleted.Session_ID,
            deleted.Session_Date AS Old_Session_Date,
            inserted.Session_Date AS New_Session_Date,
            GETDATE() AS Updated_At
        FROM deleted
        INNER JOIN inserted ON deleted.Session_ID = inserted.Session_ID;
    END
END;

UPDATE Session SET Session_Date = '2023-09-29' WHERE Session_ID = 2005;

SELECT Session_ID ,Old_Session_Date,New_Session_Date, Updated_At FROM Session_log;

-------------------------------------------------------------------------------------------------------------------------

-- TRIGGER 2:
-- INSERTING A NEW RECORD IN THE SESSIONS TABLE . AUTOMATICALY INSERTS THE DATA INTO THE BILL TABLE
-- WILL WORK FROM SESSION ID -> 2035 AND SO ON
CREATE TRIGGER trgAfterInsertSession
ON Session
AFTER INSERT
AS
BEGIN
    INSERT INTO Bill (Session_ID, Billing_Date, Fees)
    SELECT Session_ID, Session_Date , dbo.CalculateFees(session_duration) 
    FROM inserted;
END;

SELECT * FROM Session;
SELECT * FROM Bill where Session_ID = 2035;

----------------------------------------------------------------------------------------------------------------------
--ENCRYPTION OF THERPIST LICENSE DETAILS
----------------------------------------------------------------------------------------------------------------------

ALTER TABLE Therapist ADD ENCRYPTED_Therapist_License VarBINARY(100);

Create Master Key Encryption by PASSWORD = 'tfy7g79j8ji222'

SELECT name KeyName,
    symmetric_key_id KeyID,
    key_length KeyLength,
    algorithm_desc KeyAlgorithm
FROM sys.symmetric_keys;


CREATE CERTIFICATE Certificate_LicenseEncrypt WITH SUBJECT = 'Protect my License';

CREATE SYMMETRIC KEY LicenseEncryptor 
WITH ALGORITHM = AES_256
ENCRYPTION BY CERTIFICATE Certificate_LicenseEncrypt;

SELECT name CertName,
    certificate_id CertID,
    pvt_key_encryption_type_desc EncryptType,
    issuer_name Issuer
FROM sys.certificates;

SELECT name KeyName,
    symmetric_key_id KeyID,
    key_length KeyLength,
    algorithm_desc KeyAlgorithm
FROM sys.symmetric_keys;

OPEN SYMMETRIC KEY LicenseEncryptor DECRYPTION BY CERTIFICATE Certificate_LicenseEncrypt;

UPDATE Therapist SET ENCRYPTED_Therapist_License = ENCRYPTBYKEY(KEY_GUID('LicenseEncryptor'), Therapist_LicenseDetails) FROM Therapist;
GO


CLOSE SYMMETRIC KEY LicenseEncryptor

SELECT Therapist_ID,Therapist_Name,Therapist_Phone,Therapist_Specialty,Therapist_LicenseDetails, ENCRYPTED_Therapist_License FROM Therapist;

-- SELECT THE DECRYPTED DATA
SELECT 
    Therapist_ID,Therapist_Name,Therapist_Phone,Therapist_Specialty, Therapist_LicenseDetails,
    CONVERT(NVARCHAR(MAX), DECRYPTBYKEY(ENCRYPTED_Therapist_License)) AS Decrypted_License
FROM Therapist;

----------------------------------------------------------------------------------------------------------------------
-- NON-CLUSTERED INDEX
----------------------------------------------------------------------------------------------------------------------

CREATE NONCLUSTERED INDEX Therapist_Name
ON Therapist (Therapist_Name ASC); 
--Query to display records based on the index
SELECT * FROM Therapist WITH(INDEX(Therapist_Name));

CREATE NONCLUSTERED INDEX Patient_DOB
ON Patient (Patient_DOB ASC); 
--Query to display records based on the index
SELECT * FROM Patient WITH(INDEX(Patient_DOB));

CREATE NONCLUSTERED INDEX Session_Date
ON Session (Session_Date ASC); 
--Query to display records based on the index
SELECT * FROM Session WITH(INDEX(Session_Date));

CREATE NONCLUSTERED INDEX Fees
ON Bill (Fees ASC);
--Query to display records based on the index
SELECT * FROM Bill WITH(INDEX(Fees));

