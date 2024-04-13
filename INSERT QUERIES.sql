USE CounsellingProject;
GO
-------------------------------------------------------------------------------------------------------------------------------

-- INSERTING VALUES INTO THE PATIENT TABLE:
INSERT INTO Patient(Patient_Name, Patient_Phone, Patient_Gender, Patient_DOB, Patient_Address) VALUES ('John Doe', 8575467098,'Male','1988-05-04','40,Boulevard Avenue, Avenel, NJ 07011');
INSERT INTO Patient(Patient_Name, Patient_Phone, Patient_Gender, Patient_DOB, Patient_Address) VALUES ('Lakshmi Kumar', 8575768998,'Female','2000-01-14','75,St Alphonsus Street,Boston, MA 02120');
INSERT INTO Patient(Patient_Name, Patient_Phone, Patient_Gender, Patient_DOB, Patient_Address) VALUES ('Dhir Thacker', 8877843980,'Male','1998-08-24','24,Mission Hill, Orlando, FL 33801');
INSERT INTO Patient(Patient_Name, Patient_Phone, Patient_Gender, Patient_DOB, Patient_Address) VALUES ('Manish Alety', 8573961044,'Male','1999-06-21','68, State Street, Fremont, CA 07980');
INSERT INTO Patient(Patient_Name, Patient_Phone, Patient_Gender, Patient_DOB, Patient_Address) VALUES ('Sumanth Reddy', 6784327890,'Male','1996-09-23','44, Washington Avenue,Buffalo, NY 65100');
INSERT INTO Patient(Patient_Name, Patient_Phone, Patient_Gender, Patient_DOB, Patient_Address) VALUES ('Naved Sheikh', 6779087654,'Male','1997-11-26','83, Worthington Street, Boston, MA 02120');
INSERT INTO Patient(Patient_Name, Patient_Phone, Patient_Gender, Patient_DOB, Patient_Address) VALUES ('Sanskruti Manoria', 8573699338,'Female','1993-06-21','55, Seaport Boulevard, Auburn,DC 98001');
INSERT INTO Patient(Patient_Name, Patient_Phone, Patient_Gender, Patient_DOB, Patient_Address) VALUES ('Monika Gundecha', 8575907088,'Female','1988-05-11','3759 McCrearys Ridge Rd. Moundsville, WV 26041');
INSERT INTO Patient(Patient_Name, Patient_Phone, Patient_Gender, Patient_DOB, Patient_Address) VALUES ('Harshini Boorela', 8512256909,'Female','1999-09-21','37 Washington Street.Boston/,MA 26883');
INSERT INTO Patient(Patient_Name, Patient_Phone, Patient_Gender, Patient_DOB, Patient_Address) VALUES ('Venkat Rao', 8571123098,'Male','1988-05-31','96,Commonwealth Avenue, Anaheim, CA 92802');
INSERT INTO Patient(Patient_Name, Patient_Phone, Patient_Gender, Patient_DOB, Patient_Address) VALUES ('Siddhanth Pandit', 8543460998,'Male','1968-07-10','2937 S. King Drive, Chicago, IL 60616');
INSERT INTO Patient(Patient_Name, Patient_Phone, Patient_Gender, Patient_DOB, Patient_Address) VALUES ('Yagnik Shah', 8575349098,'Male','1953-11-11','811 7th Ave, New York City, NY 02110');
INSERT INTO Patient(Patient_Name, Patient_Phone, Patient_Gender, Patient_DOB, Patient_Address) VALUES ('Aparna Velumuri', 8595489038,'Female','2003-09-11','4515 E Thomas Rd, Phoenix, AZ 54001');
INSERT INTO Patient(Patient_Name, Patient_Phone, Patient_Gender, Patient_DOB, Patient_Address) VALUES ('Agni Chaturvedi', 6791204532,'Female','1988-11-12','2901 Market St, Warren, PA 42001');
INSERT INTO Patient(Patient_Name, Patient_Phone, Patient_Gender, Patient_DOB, Patient_Address) VALUES ('Yagna Tripathi', 6345467808,'Female','1990-04-30','292 Daniel Webster Hwy, Nashua, NH 03060');

-- DISPLAYING CONTENTS OF PATIENT TABLE:
SELECT Patient_ID, Patient_Name,Patient_Phone, Patient_Gender, Patient_DOB, Patient_Address FROM Patient;

-------------------------------------------------------------------------------------------------------------------------------

--Query to Update records
--UPDATE patient set Patient_ID = 114 where Patient_Phone = 6345467808

--Query used to reset the identity counter for the mentioned table:
-- DBCC CHECKIDENT('Patient', RESEED, 99) 

--Query to Delete records:
--DELETE FROM patient WHERE Patient_ID = 100;

-------------------------------------------------------------------------------------------------------------------------------

-- INSERTING VALUES IN THE THERAPIST TABLE:
INSERT INTO Therapist(Therapist_Name, Therapist_Phone, Therapist_LicenseDetails, Therapist_Specialty) VALUES ('Cristiano Ronaldo', 9876556789, 'LIC34243', 'Neuropsychiatry');
INSERT INTO Therapist(Therapist_Name, Therapist_Phone, Therapist_LicenseDetails, Therapist_Specialty) VALUES ('Lionel Messi', 9024502502, 'LIC34578', 'Neuropsychiatry');
INSERT INTO Therapist(Therapist_Name, Therapist_Phone, Therapist_LicenseDetails, Therapist_Specialty) VALUES ('Luis Suarez', 7884575959, 'LIC49575', 'Addiction psychiatry');
INSERT INTO Therapist(Therapist_Name, Therapist_Phone, Therapist_LicenseDetails, Therapist_Specialty) VALUES ('Sergio Aguero', 6329057920, 'LIC32856', 'Addiction psychiatry');
INSERT INTO Therapist(Therapist_Name, Therapist_Phone, Therapist_LicenseDetails, Therapist_Specialty) VALUES ('Wayne Rooney', 7854363834, 'LIC18476', 'Neuropsychiatry');
INSERT INTO Therapist(Therapist_Name, Therapist_Phone, Therapist_LicenseDetails, Therapist_Specialty) VALUES ('Zlatan Ibrahimovic', 9042529057, 'LIC35797', 'Addiction psychiatry');
INSERT INTO Therapist(Therapist_Name, Therapist_Phone, Therapist_LicenseDetails, Therapist_Specialty) VALUES ('David Beckham', 6435348590, 'LIC78563', 'Psychosomatic medicine');
INSERT INTO Therapist(Therapist_Name, Therapist_Phone, Therapist_LicenseDetails, Therapist_Specialty) VALUES ('Robin Van Persie', 7325402976, 'LIC29585', 'Addiction psychiatry');
INSERT INTO Therapist(Therapist_Name, Therapist_Phone, Therapist_LicenseDetails, Therapist_Specialty) VALUES ('Iker Casillas', 9340927097, 'LIC59378', 'Neuropsychiatry');
INSERT INTO Therapist(Therapist_Name, Therapist_Phone, Therapist_LicenseDetails, Therapist_Specialty) VALUES ('Sergio Ramos', 8250275807, 'LIC49584', 'Psychosomatic medicine');
INSERT INTO Therapist(Therapist_Name, Therapist_Phone, Therapist_LicenseDetails, Therapist_Specialty) VALUES ('Luka Modric', 9423420470, 'LIC49585', 'Occupational psychiatry');
INSERT INTO Therapist(Therapist_Name, Therapist_Phone, Therapist_LicenseDetails, Therapist_Specialty) VALUES ('Carlos Casemiro', 6250257689, 'LIC34955', 'Forensic psychiatry');
INSERT INTO Therapist(Therapist_Name, Therapist_Phone, Therapist_LicenseDetails, Therapist_Specialty) VALUES ('Toni Kroos', 9025209502, 'LIC84055', 'Forensic psychiatry');
INSERT INTO Therapist(Therapist_Name, Therapist_Phone, Therapist_LicenseDetails, Therapist_Specialty) VALUES ('Granit Xhaka', 7412047789, 'LIC20844', 'Occupational psychiatry');
INSERT INTO Therapist(Therapist_Name, Therapist_Phone, Therapist_LicenseDetails, Therapist_Specialty) VALUES ('Thierry Henry', 6345306789, 'LIC12083', 'Forensic psychiatry');

-- DISPLAYING CONTENTS OF THERAPIST TABLE:
SELECT Therapist_ID,Therapist_Name, Therapist_Phone, Therapist_LicenseDetails, Therapist_Specialty FROM Therapist;

------------------------------------------------------------------------------------------------------------------------------

--VALUES FOR SPECIALITY:
-- Addiction psychiatry
-- Forensic psychiatry (The application of psychiatry in criminal, courtroom, or correctional settings)
-- Geriatric psychiatry (Psychiatry for older populations)
-- Neuropsychiatry (Mental disorders associated with nervous system injuries or disease)
-- Occupational psychiatry (Psychiatry in the workplace, particularly occupations in which risk, danger, or grief are common)
-- Psychosomatic medicine (The application of psychiatry in a medical setting, such as diagnosis and treatment of delirium)

--Query used to reset the identity counter for the mentioned table:
--DBCC CHECKIDENT('Therapist', RESEED, 999)  

--Query to Delete records:
-- Delete from Therapist where Therapist_ID = 1013

--Query to find a record based on Speciality: 
--SELECT Therapist_ID from Therapist where Therapist_Specialty = 'Forensic Psychiatry'

------------------------------------------------------------------------------------------------------------------------------

-- INSERTING VALUES IN SESSION TABLE:
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (100, 1006, '2023-09-15', '10:45:00',60, 'In todays psychosomatic medicine session with John Doe, the emphasis was on exploring the intricate connections between psychological and physical well-being. The patients psychosocial factors and their impact on physical health were thoroughly assessed. We delved into the interplay between emotional states and physical symptoms, examining any stressors or emotional triggers. A comprehensive review of the patients medical history and current symptoms informed the session, allowing for a holistic understanding of the mind-body connection. Interventions included psychoeducation on stress management techniques, promoting mindfulness, and fostering a collaborative approach with other healthcare providers when necessary. The session concluded with a plan to monitor the bidirectional influence of psychological and physical factors, aiming to enhance overall well-being through integrative psychosomatic care.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (109, 1004, '2023-10-02', '16:15', 75, 'In todays neuropsychiatry session with Venkat Rao, the focus was on evaluating and addressing the intricate interplay between neurological and psychiatric aspects. Notable neurological symptoms were discussed alongside psychiatric presentations, and changes since the last session were carefully examined. The session encompassed a thorough neurological assessment, exploration of psychiatric symptoms, and a review of medication adherence and potential adjustments. Interventions included coordinating with a neurologist for further assessment, modifying psychiatric medications as needed, and suggesting strategies to manage both neurological and psychiatric symptoms. The plan for the next session involves tracking changes in symptoms, collaborating with the neurologist for comprehensive care, and providing ongoing support and education to address the challenges presented by the intersection of neurological and psychiatric conditions.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (101, 1003, '2023-10-20', '12:30', 90, 'In todays addiction psychiatry session with Lakshmi Kumar, the primary objective was to address the patients struggles with addiction. The session began by exploring the patients current substance use patterns and any associated psychiatric symptoms. Emphasis was placed on understanding triggers and identifying coping mechanisms. A comprehensive review of the patients history of substance use and previous treatment interventions was conducted. The discussion also delved into the patients motivation for change and commitment to the treatment process. Interventions included reinforcing the importance of adherence to the treatment plan, exploring strategies for relapse prevention, and providing psychoeducation on the impact of substance use on mental health. The session concluded with collaborative goal-setting for the next session and ongoing support in the journey toward recovery.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (109, 1000, '2023-09-08', '15:30', 105, 'In todays neuropsychiatry session with Venkat Rao, the focus was on evaluating and addressing the intricate interplay between neurological and psychiatric aspects. Notable neurological symptoms were discussed alongside psychiatric presentations, and changes since the last session were carefully examined. The session encompassed a thorough neurological assessment, exploration of psychiatric symptoms, and a review of medication adherence and potential adjustments. Interventions included coordinating with a neurologist for further assessment, modifying psychiatric medications as needed, and suggesting strategies to manage both neurological and psychiatric symptoms. The plan for the next session involves tracking changes in symptoms, collaborating with the neurologist for comprehensive care, and providing ongoing support and education to address the challenges presented by the intersection of neurological and psychiatric conditions.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (103, 1003, '2023-10-27', '18:15', 120, 'In todays addiction psychiatry session with Manish Alety, the primary objective was to address the patients struggles with addiction. The session began by exploring the patients current substance use patterns and any associated psychiatric symptoms. Emphasis was placed on understanding triggers and identifying coping mechanisms. A comprehensive review of the patients history of substance use and previous treatment interventions was conducted. The discussion also delved into the patients motivation for change and commitment to the treatment process. Interventions included reinforcing the importance of adherence to the treatment plan, exploring strategies for relapse prevention, and providing psychoeducation on the impact of substance use on mental health. The session concluded with collaborative goal-setting for the next session and ongoing support in the journey toward recovery.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (113, 1002, '2023-09-25', '11:00', 60, 'In todays addiction psychiatry session with Agni Chaturvedi, the primary objective was to address the patients struggles with addiction. The session began by exploring the patients current substance use patterns and any associated psychiatric symptoms. Emphasis was placed on understanding triggers and identifying coping mechanisms. A comprehensive review of the patients history of substance use and previous treatment interventions was conducted. The discussion also delved into the patients motivation for change and commitment to the treatment process. Interventions included reinforcing the importance of adherence to the treatment plan, exploring strategies for relapse prevention, and providing psychoeducation on the impact of substance use on mental health. The session concluded with collaborative goal-setting for the next session and ongoing support in the journey toward recovery.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (108, 1009, '2023-10-15', '20:15', 90, 'In todays psychosomatic medicine session with Harshini Boorela, the emphasis was on exploring the intricate connections between psychological and physical well-being. The patients psychosocial factors and their impact on physical health were thoroughly assessed. We delved into the interplay between emotional states and physical symptoms, examining any stressors or emotional triggers. A comprehensive review of the patients medical history and current symptoms informed the session, allowing for a holistic understanding of the mind-body connection. Interventions included psychoeducation on stress management techniques, promoting mindfulness, and fostering a collaborative approach with other healthcare providers when necessary. The session concluded with a plan to monitor the bidirectional influence of psychological and physical factors, aiming to enhance overall well-being through integrative psychosomatic care.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (101, 1008, '2023-09-12', '14:15', 75, 'In todays neuropsychiatry session with Lakshmi Kumar, the focus was on evaluating and addressing the intricate interplay between neurological and psychiatric aspects. Notable neurological symptoms were discussed alongside psychiatric presentations, and changes since the last session were carefully examined. The session encompassed a thorough neurological assessment, exploration of psychiatric symptoms, and a review of medication adherence and potential adjustments. Interventions included coordinating with a neurologist for further assessment, modifying psychiatric medications as needed, and suggesting strategies to manage both neurological and psychiatric symptoms. The plan for the next session involves tracking changes in symptoms, collaborating with the neurologist for comprehensive care, and providing ongoing support and education to address the challenges presented by the intersection of neurological and psychiatric conditions.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (112, 1007, '2023-10-05', '11:45', 105, 'In todays addiction psychiatry session with Aparna Velamuri, the primary objective was to address the patients struggles with addiction. The session began by exploring the patients current substance use patterns and any associated psychiatric symptoms. Emphasis was placed on understanding triggers and identifying coping mechanisms. A comprehensive review of the patients history of substance use and previous treatment interventions was conducted. The discussion also delved into the patients motivation for change and commitment to the treatment process. Interventions included reinforcing the importance of adherence to the treatment plan, exploring strategies for relapse prevention, and providing psychoeducation on the impact of substance use on mental health. The session concluded with collaborative goal-setting for the next session and ongoing support in the journey toward recovery.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (106, 1003, '2023-10-10', '19:00', 45, 'In todays addiction psychiatry session with Sanskruti Manoria, the primary objective was to address the patients struggles with addiction. The session began by exploring the patients current substance use patterns and any associated psychiatric symptoms. Emphasis was placed on understanding triggers and identifying coping mechanisms. A comprehensive review of the patients history of substance use and previous treatment interventions was conducted. The discussion also delved into the patients motivation for change and commitment to the treatment process. Interventions included reinforcing the importance of adherence to the treatment plan, exploring strategies for relapse prevention, and providing psychoeducation on the impact of substance use on mental health. The session concluded with collaborative goal-setting for the next session and ongoing support in the journey toward recovery.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (102, 1010, '2023-09-18', '13:15', 120, 'In todays occupational psychiatry session with Dhir Thacker, the primary focus was on evaluating and addressing mental health concerns within the context of the patients occupational life. A comprehensive review of work-related stressors, challenges, and coping mechanisms was conducted. The patients emotional well-being and its impact on occupational performance were explored, with an emphasis on achieving a healthy work-life balance. Strategies for managing workplace stress and enhancing job satisfaction were discussed, and potential interventions, including adjustments to work routines or responsibilities, were considered. The session aimed to foster improved mental health within the framework of the patients occupational context, promoting resilience and well-being in the workplace.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (107, 1014, '2023-10-29', '17:30', 60, 'In todays forensic psychiatry session, the patient Monika Gundecha was assessed within the context of legal and psychiatric considerations. The session involved a comprehensive review of the patients mental health status, focusing on any relevant legal implications. Discussions encompassed the patients understanding of legal proceedings, mental state at the time of alleged incidents, and potential factors contributing to the forensic aspects of the case. Emphasis was placed on gathering information crucial for legal evaluations and collaborating with legal professionals involved in the case. The plan for subsequent sessions involves continued assessment, ongoing collaboration with legal authorities, and the development of a comprehensive psychiatric report to inform legal proceedings.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (111, 1012, '2023-09-05', '09:15', 75, 'In todays forensic psychiatry session, the patient Yagnik Shah was assessed within the context of legal and psychiatric considerations. The session involved a comprehensive review of the patients mental health status, focusing on any relevant legal implications. Discussions encompassed the patients understanding of legal proceedings, mental state at the time of alleged incidents, and potential factors contributing to the forensic aspects of the case. Emphasis was placed on gathering information crucial for legal evaluations and collaborating with legal professionals involved in the case. The plan for subsequent sessions involves continued assessment, ongoing collaboration with legal authorities, and the development of a comprehensive psychiatric report to inform legal proceedings.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (114, 1011, '2023-10-23', '21:00', 90, 'In todays neuropsychiatry session with Yagna Tripathi, the focus was on evaluating and addressing the intricate interplay between neurological and psychiatric aspects. Notable neurological symptoms were discussed alongside psychiatric presentations, and changes since the last session were carefully examined. The session encompassed a thorough neurological assessment, exploration of psychiatric symptoms, and a review of medication adherence and potential adjustments. Interventions included coordinating with a neurologist for further assessment, modifying psychiatric medications as needed, and suggesting strategies to manage both neurological and psychiatric symptoms. The plan for the next session involves tracking changes in symptoms, collaborating with the neurologist for comprehensive care, and providing ongoing support and education to address the challenges presented by the intersection of neurological and psychiatric conditions.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (104, 1006, '2023-09-30', '16:45', 105, 'In todays psychosomatic medicine session with Sumanth Reddy, the emphasis was on exploring the intricate connections between psychological and physical well-being. The patients psychosocial factors and their impact on physical health were thoroughly assessed. We delved into the interplay between emotional states and physical symptoms, examining any stressors or emotional triggers. A comprehensive review of the patients medical history and current symptoms informed the session, allowing for a holistic understanding of the mind-body connection. Interventions included psychoeducation on stress management techniques, promoting mindfulness, and fostering a collaborative approach with other healthcare providers when necessary. The session concluded with a plan to monitor the bidirectional influence of psychological and physical factors, aiming to enhance overall well-being through integrative psychosomatic care.')
--Newly Inserted Data 1
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (105, 1001, '2023-10-13', '14:30', 90, 'In todays neuropsychiatry session with Naved Sheikh, the focus was on evaluating and addressing the intricate interplay between neurological and psychiatric aspects. Notable neurological symptoms were discussed alongside psychiatric presentations, and changes since the last session were carefully examined. The session encompassed a thorough neurological assessment, exploration of psychiatric symptoms, and a review of medication adherence and potential adjustments. Interventions included coordinating with a neurologist for further assessment, modifying psychiatric medications as needed, and suggesting strategies to manage both neurological and psychiatric symptoms. The plan for the next session involves tracking changes in symptoms, collaborating with the neurologist for comprehensive care, and providing ongoing support and education to address the challenges presented by the intersection of neurological and psychiatric conditions.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (105, 1005, '2023-09-26', '17:00', 60, 'In todays addiction psychiatry session with Naved Sheikh, the primary objective was to address the patients struggles with addiction. The session began by exploring the patients current substance use patterns and any associated psychiatric symptoms. Emphasis was placed on understanding triggers and identifying coping mechanisms. A comprehensive review of the patients history of substance use and previous treatment interventions was conducted. The discussion also delved into the patients motivation for change and commitment to the treatment process. Interventions included reinforcing the importance of adherence to the treatment plan, exploring strategies for relapse prevention, and providing psychoeducation on the impact of substance use on mental health. The session concluded with collaborative goal-setting for the next session and ongoing support in the journey toward recovery.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (110, 1013, '2023-10-18', '12:00', 90, 'In todays occupational psychiatry session with Siddhant Pandit, the primary focus was on evaluating and addressing mental health concerns within the context of the patients occupational life. A comprehensive review of work-related stressors, challenges, and coping mechanisms was conducted. The patients emotional well-being and its impact on occupational performance were explored, with an emphasis on achieving a healthy work-life balance. Strategies for managing workplace stress and enhancing job satisfaction were discussed, and potential interventions, including adjustments to work routines or responsibilities, were considered. The session aimed to foster improved mental health within the framework of the patients occupational context, promoting resilience and well-being in the workplace.')
--Newly Inserted Data 2
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (101, 1000, '2023-10-21', '12:30', 60, 'In todays neuropsychiatry session with Lakshmi Kumar, the focus was on evaluating and addressing the intricate interplay between neurological and psychiatric aspects. Notable neurological symptoms were discussed alongside psychiatric presentations, and changes since the last session were carefully examined. The session encompassed a thorough neurological assessment, exploration of psychiatric symptoms, and a review of medication adherence and potential adjustments. Interventions included coordinating with a neurologist for further assessment, modifying psychiatric medications as needed, and suggesting strategies to manage both neurological and psychiatric symptoms. The plan for the next session involves tracking changes in symptoms, collaborating with the neurologist for comprehensive care, and providing ongoing support and education to address the challenges presented by the intersection of neurological and psychiatric conditions.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (107, 1006, '2023-10-26', '19:30', 105, 'In todays psychosomatic medicine session with Monika Gundecha, the emphasis was on exploring the intricate connections between psychological and physical well-being. The patients psychosocial factors and their impact on physical health were thoroughly assessed. We delved into the interplay between emotional states and physical symptoms, examining any stressors or emotional triggers. A comprehensive review of the patients medical history and current symptoms informed the session, allowing for a holistic understanding of the mind-body connection. Interventions included psychoeducation on stress management techniques, promoting mindfulness, and fostering a collaborative approach with other healthcare providers when necessary. The session concluded with a plan to monitor the bidirectional influence of psychological and physical factors, aiming to enhance overall well-being through integrative psychosomatic care.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (104, 1003, '2023-09-15', '14:00', 75, 'In todays addiction psychiatry session with Sumanth Reddy, the primary objective was to address the patients struggles with addiction. The session began by exploring the patients current substance use patterns and any associated psychiatric symptoms. Emphasis was placed on understanding triggers and identifying coping mechanisms. A comprehensive review of the patients history of substance use and previous treatment interventions was conducted. The discussion also delved into the patients motivation for change and commitment to the treatment process. Interventions included reinforcing the importance of adherence to the treatment plan, exploring strategies for relapse prevention, and providing psychoeducation on the impact of substance use on mental health. The session concluded with collaborative goal-setting for the next session and ongoing support in the journey toward recovery.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (109, 1004, '2023-09-14', '15:45', 120, 'In todays neuropsychiatry session with Venkat Rao, the focus was on evaluating and addressing the intricate interplay between neurological and psychiatric aspects. Notable neurological symptoms were discussed alongside psychiatric presentations, and changes since the last session were carefully examined. The session encompassed a thorough neurological assessment, exploration of psychiatric symptoms, and a review of medication adherence and potential adjustments. Interventions included coordinating with a neurologist for further assessment, modifying psychiatric medications as needed, and suggesting strategies to manage both neurological and psychiatric symptoms. The plan for the next session involves tracking changes in symptoms, collaborating with the neurologist for comprehensive care, and providing ongoing support and education to address the challenges presented by the intersection of neurological and psychiatric conditions.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (102, 1005, '2023-12-11', '17:15', 45, 'In todays addiction psychiatry session with Dhir Thacker, the primary objective was to address the patients struggles with addiction. The session began by exploring the patients current substance use patterns and any associated psychiatric symptoms. Emphasis was placed on understanding triggers and identifying coping mechanisms. A comprehensive review of the patients history of substance use and previous treatment interventions was conducted. The discussion also delved into the patients motivation for change and commitment to the treatment process. Interventions included reinforcing the importance of adherence to the treatment plan, exploring strategies for relapse prevention, and providing psychoeducation on the impact of substance use on mental health. The session concluded with collaborative goal-setting for the next session and ongoing support in the journey toward recovery.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (107, 1006, '2023-10-30', '16:00', 75, 'In todays psychosomatic medicine session with Monika Gundecha, the emphasis was on exploring the intricate connections between psychological and physical well-being. The patients psychosocial factors and their impact on physical health were thoroughly assessed. We delved into the interplay between emotional states and physical symptoms, examining any stressors or emotional triggers. A comprehensive review of the patients medical history and current symptoms informed the session, allowing for a holistic understanding of the mind-body connection. Interventions included psychoeducation on stress management techniques, promoting mindfulness, and fostering a collaborative approach with other healthcare providers when necessary. The session concluded with a plan to monitor the bidirectional influence of psychological and physical factors, aiming to enhance overall well-being through integrative psychosomatic care.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (106, 1003, '2023-09-11', '18:30', 60, 'In todays addiction psychiatry session with Sanskruti Manoria, the primary objective was to address the patients struggles with addiction. The session began by exploring the patients current substance use patterns and any associated psychiatric symptoms. Emphasis was placed on understanding triggers and identifying coping mechanisms. A comprehensive review of the patients history of substance use and previous treatment interventions was conducted. The discussion also delved into the patients motivation for change and commitment to the treatment process. Interventions included reinforcing the importance of adherence to the treatment plan, exploring strategies for relapse prevention, and providing psychoeducation on the impact of substance use on mental health. The session concluded with collaborative goal-setting for the next session and ongoing support in the journey toward recovery.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (102, 1000, '2023-12-21', '11:45', 120, 'In todays neuropsychiatry session with Dhir Thacker, the focus was on evaluating and addressing the intricate interplay between neurological and psychiatric aspects. Notable neurological symptoms were discussed alongside psychiatric presentations, and changes since the last session were carefully examined. The session encompassed a thorough neurological assessment, exploration of psychiatric symptoms, and a review of medication adherence and potential adjustments. Interventions included coordinating with a neurologist for further assessment, modifying psychiatric medications as needed, and suggesting strategies to manage both neurological and psychiatric symptoms. The plan for the next session involves tracking changes in symptoms, collaborating with the neurologist for comprehensive care, and providing ongoing support and education to address the challenges presented by the intersection of neurological and psychiatric conditions.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (101, 1002, '2023-12-22', '12:30', 105, 'In todays addiction psychiatry session with Lakshmi Kumar, the primary objective was to address the patients struggles with addiction. The session began by exploring the patients current substance use patterns and any associated psychiatric symptoms. Emphasis was placed on understanding triggers and identifying coping mechanisms. A comprehensive review of the patients history of substance use and previous treatment interventions was conducted. The discussion also delved into the patients motivation for change and commitment to the treatment process. Interventions included reinforcing the importance of adherence to the treatment plan, exploring strategies for relapse prevention, and providing psychoeducation on the impact of substance use on mental health. The session concluded with collaborative goal-setting for the next session and ongoing support in the journey toward recovery.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (109, 1001, '2023-12-18', '11:30', 45, 'In todays neuropsychiatry session with Venkat Rao, the focus was on evaluating and addressing the intricate interplay between neurological and psychiatric aspects. Notable neurological symptoms were discussed alongside psychiatric presentations, and changes since the last session were carefully examined. The session encompassed a thorough neurological assessment, exploration of psychiatric symptoms, and a review of medication adherence and potential adjustments. Interventions included coordinating with a neurologist for further assessment, modifying psychiatric medications as needed, and suggesting strategies to manage both neurological and psychiatric symptoms. The plan for the next session involves tracking changes in symptoms, collaborating with the neurologist for comprehensive care, and providing ongoing support and education to address the challenges presented by the intersection of neurological and psychiatric conditions.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (101, 1004, '2023-12-22', '10:30', 60, 'In todays neuropsychiatry session with Lakshmi Kumar, the focus was on evaluating and addressing the intricate interplay between neurological and psychiatric aspects. Notable neurological symptoms were discussed alongside psychiatric presentations, and changes since the last session were carefully examined. The session encompassed a thorough neurological assessment, exploration of psychiatric symptoms, and a review of medication adherence and potential adjustments. Interventions included coordinating with a neurologist for further assessment, modifying psychiatric medications as needed, and suggesting strategies to manage both neurological and psychiatric symptoms. The plan for the next session involves tracking changes in symptoms, collaborating with the neurologist for comprehensive care, and providing ongoing support and education to address the challenges presented by the intersection of neurological and psychiatric conditions.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (109, 1003, '2023-12-19', '15:00', 105, 'In todays addiction psychiatry session with Venkat Rao, the primary objective was to address the patients struggles with addiction. The session began by exploring the patients current substance use patterns and any associated psychiatric symptoms. Emphasis was placed on understanding triggers and identifying coping mechanisms. A comprehensive review of the patients history of substance use and previous treatment interventions was conducted. The discussion also delved into the patients motivation for change and commitment to the treatment process. Interventions included reinforcing the importance of adherence to the treatment plan, exploring strategies for relapse prevention, and providing psychoeducation on the impact of substance use on mental health. The session concluded with collaborative goal-setting for the next session and ongoing support in the journey toward recovery.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (111, 1006, '2023-12-18', '14:00', 60, 'In todays psychosomatic medicine session with Yagnik Shah, the emphasis was on exploring the intricate connections between psychological and physical well-being. The patients psychosocial factors and their impact on physical health were thoroughly assessed. We delved into the interplay between emotional states and physical symptoms, examining any stressors or emotional triggers. A comprehensive review of the patients medical history and current symptoms informed the session, allowing for a holistic understanding of the mind-body connection. Interventions included psychoeducation on stress management techniques, promoting mindfulness, and fostering a collaborative approach with other healthcare providers when necessary. The session concluded with a plan to monitor the bidirectional influence of psychological and physical factors, aiming to enhance overall well-being through integrative psychosomatic care.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (101, 1002, '2023-12-18', '13:30', 45, 'In todays addiction psychiatry session with Lakshmi Kumar, the primary objective was to address the patients struggles with addiction. The session began by exploring the patients current substance use patterns and any associated psychiatric symptoms. Emphasis was placed on understanding triggers and identifying coping mechanisms. A comprehensive review of the patients history of substance use and previous treatment interventions was conducted. The discussion also delved into the patients motivation for change and commitment to the treatment process. Interventions included reinforcing the importance of adherence to the treatment plan, exploring strategies for relapse prevention, and providing psychoeducation on the impact of substance use on mental health. The session concluded with collaborative goal-setting for the next session and ongoing support in the journey toward recovery.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (113, 1000, '2023-12-22', '16:30', 30, 'In todays neuropsychiatry session with Agni Chaturvedi, the focus was on evaluating and addressing the intricate interplay between neurological and psychiatric aspects. Notable neurological symptoms were discussed alongside psychiatric presentations, and changes since the last session were carefully examined. The session encompassed a thorough neurological assessment, exploration of psychiatric symptoms, and a review of medication adherence and potential adjustments. Interventions included coordinating with a neurologist for further assessment, modifying psychiatric medications as needed, and suggesting strategies to manage both neurological and psychiatric symptoms. The plan for the next session involves tracking changes in symptoms, collaborating with the neurologist for comprehensive care, and providing ongoing support and education to address the challenges presented by the intersection of neurological and psychiatric conditions.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (109, 1003, '2023-12-19', '10:00', 105, 'In todays addiction psychiatry session with Venkat Rao, the primary objective was to address the patients struggles with addiction. The session began by exploring the patients current substance use patterns and any associated psychiatric symptoms. Emphasis was placed on understanding triggers and identifying coping mechanisms. A comprehensive review of the patients history of substance use and previous treatment interventions was conducted. The discussion also delved into the patients motivation for change and commitment to the treatment process. Interventions included reinforcing the importance of adherence to the treatment plan, exploring strategies for relapse prevention, and providing psychoeducation on the impact of substance use on mental health. The session concluded with collaborative goal-setting for the next session and ongoing support in the journey toward recovery.')
INSERT INTO Session(Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes) VALUES (109, 1006, '2023-12-16', '13:30', 60, 'In todays psychosomatic medicine session with Venkat Rao, the emphasis was on exploring the intricate connections between psychological and physical well-being. The patients psychosocial factors and their impact on physical health were thoroughly assessed. We delved into the interplay between emotional states and physical symptoms, examining any stressors or emotional triggers. A comprehensive review of the patients medical history and current symptoms informed the session, allowing for a holistic understanding of the mind-body connection. Interventions included psychoeducation on stress management techniques, promoting mindfulness, and fostering a collaborative approach with other healthcare providers when necessary. The session concluded with a plan to monitor the bidirectional influence of psychological and physical factors, aiming to enhance overall well-being through integrative psychosomatic care.')

-- DISPLAYING CONTENTS OF SESSION TABLE:
SELECT Session_ID,Patient_ID, Therapist_ID, Session_Date, Session_Time, Session_Duration, Session_Notes FROM Session;

------------------------------------------------------------------------------------------------------------------------------

--Query used to reset the identity counter for the mentioned table:
-- DBCC CHECKIDENT('Session', RESEED, 1999) Used to reset the identity counter for the mentioned table

--Query to Delete records:
-- DELETE FROM Session where Session_ID = 2000

------------------------------------------------------------------------------------------------------------------------------

-- INSERTING INTO SLOT AVAILABILITY TABLE
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1000, '2023-09-08', '15:30:00',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1001, '2023-09-30', '18:45:00',0);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1006, '2023-09-30', '16:45:00',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1003, '2023-10-20', '12:30:00',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1005, '2023-09-26', '16:45:00',0);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1014, '2023-10-29', '17:30:00',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1004, '2023-10-02', '16:15:00',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1008, '2023-09-12', '14:15:00',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1001, '2023-10-11', '13:45:00',0);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1002, '2023-09-25', '11:00:00',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1004, '2023-10-16', '11:45:00',0);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1007, '2023-10-05', '11:45:00',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1013, '2023-10-22', '12:45:00',0);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1006, '2023-09-15', '10:45:00',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1011, '2023-10-23', '21:00:00',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1009, '2023-10-15', '20:15:00',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1003, '2023-10-10', '19:00:00',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1003, '2023-10-27', '18:15:00',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1010, '2023-09-18', '13:15:00',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1012, '2023-09-05', '09:15:00',1);
--Newly Inserted Data 1
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1001, '2023-10-13', '14:30:00',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1005, '2023-09-26', '17:00:00',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1013, '2023-10-18', '12:00:00',1);
--Newly Inserted Data 2
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1000,'2023-10-21','12:30',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1006,'2023-10-26','19:30',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1003,'2023-09-15','14:00',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1004,'2023-09-14','15:45',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1005,'2023-12-11','17:15',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1006,'2023-10-30','16:00',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1003,'2023-09-11','18:30',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1000,'2023-12-21','11:45',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1002,'2023-12-22','12:30',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1001,'2023-12-18','11:30',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1004,'2023-12-22','10:30',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1003,'2023-12-19','15:00',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1006,'2023-12-18','14:00',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1002,'2023-12-18','13:30',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1000,'2023-12-18','13:30',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1003,'2023-12-19','10:00',1);
INSERT INTO SlotAvailabilty(Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable) VALUES(1006,'2023-12-16','13:30',1);

-- DISPLAYING CONTENTS OF SLOT TABLE:
SELECT Slot_ID,Therapist_ID,Slot_Date,Slot_Time,Slot_IsAvailable FROM SlotAvailabilty;

------------------------------------------------------------------------------------------------------------------------------
-- 0 -> Not booked, 1-> Booked
-- Slot_isAvailable updation as per session duration, can be implemented in Stored Procedure, User Defined Function etc.

--Query used to reset the identity counter for the mentioned table:
-- DBCC CHECKIDENT('session', RESEED, 2999) 

--Query to Delete records:
--DELETE FROM Session where Session_ID = 3000
------------------------------------------------------------------------------------------------------------------------------

-- INSERTING VALUES INTO THE FEEDBACK TABLE:
INSERT INTO Feedback(Session_ID, Ratings, Comments) VALUES 
(2000, 2, 'Poor'),
(2005, 4, 'Good'),
(2001, 3, 'Average'),
(2003, 5, 'Exceptional'),
(2007, 4, 'Good'),
(2013, 3, 'Average'),
(2002, 2, 'Poor'),
(2008, 5, 'Exceptional'),
(2004, 3, 'Average'),
(2014, 5, 'Exceptional'),
(2006, 4, 'Good'),
(2010, 4, 'Good'),
(2017, 5, 'Exceptional'),
(2015, 3, 'Average'),
(2011, 5, 'Exceptional'),
(2016, 2, 'Poor'),
(2009, 4, 'Good'),
(2012, 5, 'Exceptional')
--Newly Inserted Data 1
INSERT INTO Feedback(Session_ID, Ratings, Comments) VALUES 
(2027, 4, 'Good'),
(2018, 5, 'Exceptional'),
(2028, 3, 'Average'),
(2019, 5, 'Exceptional'),
(2029, 4, 'Good'),
(2020, 2, 'Poor'),
(2030, 5, 'Exceptional'),
(2021, 3, 'Average'),
(2031, 5, 'Exceptional'),
(2022, 4, 'Good'),
(2032, 5, 'Exceptional'),
(2023, 5, 'Exceptional'),
(2033, 2, 'Poor'),
(2024, 5, 'Exceptional'),
(2034, 4, 'Good'),
(2025, 3, 'Average'),
(2026, 4, 'Good')

-- DISPLAYING CONTENTS OF FEEDBACK TABLE:
SELECT Feedback_ID, Session_ID, Ratings, Comments FROM Feedback;

------------------------------------------------------------------------------------------------------------------------------
-- Inserting values into Feedback table
-- 5: Exceptional
-- 4: Good
-- 3: Average/Satisfactory
-- 2: Poor
-- 1: Horrible

--Query used to reset the identity counter for the mentioned table:
-- DBCC CHECKIDENT('Feedback', RESEED, 3999)

--Query to Delete records:
-- DELETE FROM Feedback WHERE Ratings = 5
------------------------------------------------------------------------------------------------------------------------------

-- INSERTING VALUES INTO NOTE TABLE
INSERT INTO Note(Session_ID, Date_Created, Pointers) VALUES 
(2000, '2023-09-15', 'Discuss on the recent car accident and its impact on mental health'),
(2001, '2023-09-03', 'Review the progress of medication for anxiety'),
(2002, '2023-09-25', 'Explore coping strategies for stress and work-related issues'),
(2003, '2023-10-12', 'Discuss the importance of maintaining a healthy sleep routine'),
(2004, '2023-10-05', 'Address concerns about social anxiety in public settings'),
(2005, '2023-09-08', 'Review the effectiveness of mindfulness techniques for relaxation'),
(2006, '2023-09-18', 'Discuss the impact of diet on overall mental well-being'),
(2007, '2023-10-20', 'Explore techniques for managing and reducing panic attacks'),
(2008, '2023-09-10', 'Address family dynamics and their influence on mental health'),
(2009, '2023-09-22', 'Discuss strategies for improving self-esteem and self-worth'),
(2010, '2023-10-08', 'Review progress in overcoming specific phobias'),
(2011, '2023-10-30', 'Explore the connection between physical health and mental well-being'),
(2012, '2023-09-14', 'Discuss the impact of recent life changes on mental health'),
(2013, '2023-10-02', 'Review the use of medications and any associated side effects'),
(2014, '2023-09-28', 'Explore the role of exercise in managing stress and anxiety'),
(2015, '2023-09-07', 'Address relationship challenges and their effect on mental health'),
(2016, '2023-10-15', 'Discuss the importance of maintaining a healthy work-life balance'),
(2017, '2023-09-20', 'Review and adjust treatment plan for optimal results');
-- Newly Inserted Data
INSERT INTO Note(Session_ID, Date_Created, Pointers) VALUES 
(2018, '2023-10-21', 'Discuss the importance of maintaining a healthy work-life balance'),
(2027, '2023-12-18', 'Review and adjust treatment plan for optimal results'),
(2019, '2023-10-26', 'Review the use of medications and any associated side effects'),
(2028, '2023-12-22', 'Discuss strategies for improving self-esteem and self-worth'),
(2020, '2023-09-15', 'Discuss on the recent car accident and its impact on mental health'),
(2029, '2023-12-19', 'Review the effectiveness of mindfulness techniques for relaxation'),
(2021, '2023-09-14', 'Explore the connection between physical health and mental well-being'),
(2030, '2023-12-18', 'Explore techniques for managing and reducing panic attacks'),
(2022, '2023-12-11', 'Explore coping strategies for stress and work-related issues'),
(2031, '2023-12-18', 'Discuss the importance of maintaining a healthy work-life balance'),
(2023, '2023-10-30', 'Review the progress of medication for anxiety'),
(2032, '2023-12-22', 'Discuss the impact of diet on overall mental well-being'),
(2024, '2023-09-11', 'Review the use of medications and any associated side effects'),
(2033, '2023-12-19', 'Explore the connection between physical health and mental well-being'),
(2025, '2023-12-21', 'Discuss the importance of maintaining a healthy work-life balance'),
(2034, '2023-12-16', 'Review and adjust treatment plan for optimal results'),
(2026, '2023-12-22', 'Review progress in overcoming specific phobias');

-- DISPLAYING CONTENTS OF NOTE TABLE:
SELECT Note_ID,Session_ID,Date_Created,Pointers FROM Note;

------------------------------------------------------------------------------------------------------------------------------
--Query used to reset the identity counter for the mentioned table:
-- DBCC CHECKIDENT('Note', RESEED, 4999)

--Query to Delete records:
--DELETE FROM Note WHERE Session_ID=2000;
------------------------------------------------------------------------------------------------------------------------------

-- INSERING VALUES INTO TREATMENT PLAN TABLE:
INSERT INTO TreatmentPlan(Session_ID, Milestones, Diagnosis, Intervention) VALUES 
(2000, 'We have achieved to discuss the recent car accident and its impact on mental health', 'Patient expressed symptoms of acute stress disorder', 'Implement relaxation techniques and coping strategies in the upcoming sessions'),
(2001, 'Successfully reviewed the progress of medication for anxiety', 'Continuing diagnosis of generalized anxiety disorder', 'Adjust medication dosage if necessary and monitor for side effects'),
(2002, 'Explored coping strategies for stress and work-related issues', 'Identified symptoms of work-related burnout', 'Implement stress management techniques and work-life balance strategies'),
(2003, 'Discussed the importance of maintaining a healthy sleep routine', 'Patient reports difficulties with insomnia', 'Develop a personalized sleep hygiene plan and monitor sleep patterns'),
(2004, 'Addressed concerns about social anxiety in public settings', 'Diagnosis of social anxiety disorder', 'Gradual exposure therapy and social skills training in future sessions'),
(2005, 'Reviewed the effectiveness of mindfulness techniques for relaxation', 'Patient reports improvement in stress levels', 'Continue mindfulness practices and explore advanced techniques'),
(2006, 'Discussed the impact of diet on overall mental well-being', 'Identified dietary factors affecting mood', 'Develop a nutrition plan to support mental health and monitor dietary habits'),
(2007, 'Explored techniques for managing and reducing panic attacks', 'Diagnosis of panic disorder', 'Implement cognitive-behavioral strategies for panic attack management'),
(2008, 'Addressed family dynamics and their influence on mental health', 'Family conflicts impact patients mental well-being', 'Explore family therapy options and communication strategies'),
(2009, 'Discussed strategies for improving self-esteem and self-worth', 'Diagnosis of low self-esteem and negative self-image', 'Implement cognitive restructuring and self-esteem building exercises'),
(2010, 'Reviewed progress in overcoming specific phobias', 'Patient has made significant strides in facing phobias', 'Continue exposure therapy and explore additional phobia-specific interventions'),
(2011, 'Explored the connection between physical health and mental well-being', 'Recognized the impact of physical health on mental health', 'Collaborate with healthcare providers for a holistic approach to well-being'),
(2012, 'Discussed the impact of recent life changes on mental health', 'Identified stressors related to recent life changes', 'Develop coping strategies for adapting to change and building resilience'),
(2013, 'Reviewed the use of medications and any associated side effects', 'Assessed the effectiveness of current medications', 'Adjust medication regimen as needed and monitor for side effects'),
(2014, 'Explored the role of exercise in managing stress and anxiety', 'Patient expresses interest in incorporating exercise', 'Develop an exercise plan tailored to the patients preferences and capabilities'),
(2015, 'Addressed relationship challenges and their effect on mental health', 'Diagnosis of relationship-related stress', 'Implement couples counseling and communication exercises'),
(2016, 'Discussed the importance of maintaining a healthy work-life balance', 'Identified challenges in balancing work and personal life', 'Develop strategies for setting boundaries and prioritizing self-care'),
(2017, 'Reviewed and adjusted the treatment plan for optimal results', 'Assessed overall progress in treatment goals', 'Modify intervention strategies based on the patients response and current needs');
-- Newly Inserted Data
INSERT INTO TreatmentPlan(Session_ID, Milestones, Diagnosis, Intervention) VALUES
(2018, 'Completed initial assessment', 'No significant findings', 'Continue monitoring'),
(2019, 'Reviewed medical history', 'Identified potential risk factors', 'Implement preventive measures'),
(2020, 'Discussing past trauma', 'Identified trauma triggers', 'Introduce coping strategies'),
(2021, 'Exploring family dynamics', 'Noted family conflicts', 'Recommend family therapy'),
(2022, 'Addressing anxiety symptoms', 'Diagnosed with generalized anxiety disorder', 'Initiate cognitive-behavioral therapy'),
(2023, 'Assessment of depressive symptoms', 'Diagnosed with mild depression', 'Implement antidepressant medication'),
(2024, 'Evaluating substance use history', 'Identified substance abuse issue', 'Refer to substance abuse counseling'),
(2025, 'Assessing sleep difficulties', 'Noted insomnia symptoms', 'Implement sleep hygiene techniques'),
(2026, 'Reviewing eating habits', 'Diagnosed with binge-eating disorder', 'Initiate nutritional counseling'),
(2027, 'Identifying anger triggers', 'Noted anger management issues', 'Introduce anger management techniques'),
(2028, 'Exploring interpersonal relationships', 'Diagnosed with social anxiety', 'Implement exposure therapy'),
(2029, 'Addressing self-esteem issues', 'Noted low self-esteem', 'Introduce self-esteem building exercises'),
(2030, 'Managing chronic pain', 'Diagnosed with chronic pain syndrome', 'Implement pain management strategies'),
(2031, 'Assessment of attention difficulties', 'Diagnosed with attention deficit disorder', 'Initiate behavioral therapy'),
(2032, 'Reviewing communication patterns', 'Identified communication breakdowns', 'Introduce communication skills training'),
(2033, 'Exploring trauma history', 'Diagnosed with post-traumatic stress disorder', 'Initiate trauma-focused therapy'),
(2034, 'Assessing obsessive-compulsive symptoms', 'Diagnosed with OCD', 'Initiate exposure and response prevention therapy')

--QUERY TO DISPLAY CONTENTS OF TREATMENT PLAN TABLE:
SELECT Treatment_ID,Session_ID, Milestones, Diagnosis, Intervention FROM TreatmentPlan;

------------------------------------------------------------------------------------------------------------------------------
--Query used to reset the identity counter for the mentioned table:
-- DBCC CHECKIDENT('Treatment_Plan', RESEED, 5999)

--Query to Delete records:
--DELETE FROM Note WHERE Session_ID=2000;
------------------------------------------------------------------------------------------------------------------------------

-- Inserting values into Progress table
INSERT INTO Progress(Session_ID, Content, Date_Created, Progress_Update) VALUES 
(2005, 'Patient reports improvement in mood and reduced stress levels', '2023-09-10', 'Discuss continued use of mindfulness techniques and explore additional stress management strategies'),
(2009, 'Noted positive changes in self-esteem and self-worth', '2023-09-25', 'Explore further strategies for building self-esteem and address any challenges encountered'),
(2013, 'Patient reports a decrease in anxiety symptoms and improved sleep', '2023-10-05', 'Review the current medication regimen and discuss any adjustments needed for optimal effectiveness'),
(2003, 'Discussed the impact of sleep routine on overall well-being', '2023-09-18', 'Implement and monitor changes in the sleep hygiene plan, address any barriers to better sleep'),
(2011, 'Explored the connection between physical health and mental well-being', '2023-10-12', 'Discuss the integration of physical health practices into the overall treatment plan'),
(2010, 'Reviewed progress in overcoming specific phobias', '2023-09-22', 'Continue exposure therapy and address any new phobias or challenges'),
(2017, 'Reviewed and adjusted the treatment plan for optimal results', '2023-10-30', 'Discuss modifications to the intervention strategies based on the overall treatment progress'),
(2001, 'Patient expressed satisfaction with the current medication for anxiety', '2023-09-03', 'Monitor for any side effects and discuss long-term medication management'),
(2008, 'Explored family dynamics and their influence on mental health', '2023-09-15', 'Discuss family therapy options and strategies for improving family relationships'),
(2016, 'Discussed the importance of maintaining a healthy work-life balance', '2023-09-28', 'Explore further strategies for setting boundaries and managing work-related stress'),
(2007, 'Explored techniques for managing and reducing panic attacks', '2023-09-20', 'Implement and refine cognitive-behavioral strategies for panic attack management'),
(2002, 'Explored coping strategies for stress and work-related issues', '2023-10-08', 'Implement stress management techniques and discuss ways to improve work-life balance'),
(2012, 'Discussed the impact of recent life changes on mental health', '2023-09-14', 'Continue exploring coping strategies for adapting to life changes and building resilience'),
(2014, 'Explored the role of exercise in managing stress and anxiety', '2023-10-15', 'Develop and monitor an exercise plan tailored to the patients preferences and capabilities'),
(2004, 'Addressed concerns about social anxiety in public settings', '2023-09-07', 'Continue exposure therapy and social skills training to address social anxiety'),
(2015, 'Addressed relationship challenges and their effect on mental health', '2023-09-08', 'Implement couples counseling strategies and communication exercises'),
(2006, 'Discussed the impact of diet on overall mental well-being', '2023-09-02', 'Develop and monitor a nutrition plan to support mental health'),
(2016, 'Discussed the importance of maintaining a healthy work-life balance', '2023-09-01', 'Explore further strategies for setting boundaries and managing work-related stress'),
(2016, 'Discussed the importance of maintaining a healthy work-life balance', '2023-09-12', 'Explore further strategies for setting boundaries and managing work-related stress'),
(2016, 'Discussed the importance of maintaining a healthy work-life balance', '2023-09-24', 'Explore further strategies for setting boundaries and managing work-related stress');
-- Newly Inserted Data
INSERT INTO Progress(Session_ID, Content, Date_Created, Progress_Update) VALUES
(2018, 'Social interactions', '2023-10-30', 'Explore social support networks'),
(2019, 'Therapy effectiveness', '2023-11-10', 'Introduce mindfulness techniques'),
(2020, 'Sleep patterns', '2023-10-02', 'Implement sleep hygiene practices'),
(2021, 'Identifying triggers', '2023-10-08', 'Develop coping strategies'),
(2022, 'Patient mood assessment', '2023-12-22', 'Discuss coping mechanisms'),
(2023, 'Patient feedback', '2023-11-22', 'Address concerns and goals'),
(2024, 'Communication skills', '2023-10-22', 'Work on improving interpersonal skills'),
(2025, 'Emotional well-being', '2023-12-27', 'Discuss progress in managing emotions'),
(2026, 'Medication side effects', '2023-12-29', 'Adjust dosage if needed'),
(2027, 'Treatment compliance', '2023-12-24', 'Review medication adherence'),
(2028, 'Goal setting', '2023-12-30', 'Review and adjust treatment goals'),
(2029, 'Stress management', '2023-12-27', 'Discuss stress reduction techniques'),
(2030, 'Behavior observation', '2023-12-24', 'Explore new treatment options'),
(2031, 'Cognitive assessment', '2023-12-27', 'Introduce cognitive-behavioral strategies'),
(2032, 'Physical health assessment', '2023-12-29', 'Recommend lifestyle changes'),
(2033, 'Pain assessment', '2023-12-23', 'Adjust pain management plan'),
(2034, 'Symptom tracking', '2023-12-23', 'Evaluate treatment plan')

SELECT Progress_ID,Session_ID, Content, Date_Created, Progress_Update FROM Progress;

------------------------------------------------------------------------------------------------------------------------------
--Query used to reset the identity counter for the mentioned table:
-- DBCC CHECKIDENT('Progress', RESEED, 6999)

--Query to Delete records:
--DELETE FROM Note WHERE Session_ID=2000;
------------------------------------------------------------------------------------------------------------------------------

-- Inserting data into the Medication table
INSERT INTO Medication(Session_ID, Medicine_Name, Prescription_Reason, Dosage) VALUES 
(2009, 'Sertraline', 'Treatment of generalized anxiety disorder', '50mg once daily in the morning'),
(2015, 'Lorazepam', 'Short-term relief of severe anxiety symptoms', '0.5mg as needed for acute anxiety episodes'),
(2007, 'Fluoxetine', 'Management of panic disorder', '20mg once daily in the evening'),
(2011, 'Amitriptyline', 'Treatment of insomnia related to depressive symptoms', '25mg at bedtime'),
(2003, 'Buspirone', 'Adjunctive treatment for social anxiety disorder', '10mg twice daily'),
(2010, 'Olanzapine', 'Management of specific phobias', '5mg once daily in the evening'),
(2014, 'Venlafaxine', 'Treatment of depression and generalized anxiety disorder', '75mg once daily in the morning'),
(2006, 'Diazepam', 'Short-term relief of severe panic attacks', '2mg as needed for acute panic episodes'),
(2013, 'Escitalopram', 'Management of obsessive-compulsive symptoms', '10mg once daily in the morning'),
(2008, 'Quetiapine', 'Adjunctive treatment for mood stabilization', '50mg once daily at bedtime'),
(2002, 'Clonazepam', 'Treatment of post-traumatic stress disorder', '0.5mg twice daily'),
(2005, 'Risperidone', 'Adjunctive treatment for irritability associated with mood disorders', '1mg once daily in the evening'),
(2016, 'Lurasidone', 'Adjunctive treatment for depressive symptoms', '20mg once daily with food'),
(2012, 'Hydroxyzine', 'Symptomatic relief of anxiety and tension', '25mg as needed for anxiety symptoms'),
(2004, 'Citalopram', 'Treatment of panic disorder and agoraphobia', '20mg once daily in the morning'),
(2017, 'Clomipramine', 'Treatment of obsessive-compulsive disorder', '75mg once daily at bedtime'),
(2001, 'Alprazolam', 'Short-term relief of anxiety symptoms', '0.25mg as needed for acute anxiety episodes'),
(2000, 'Bupropion', 'Adjunctive treatment for depressive symptoms', '150mg once daily in the morning'),
(2009, 'Mirtazapine', 'Management of sleep disturbances related to depression', '15mg at bedtime'),
(2003, 'Haloperidol', 'Adjunctive treatment for severe agitation and aggression', '2mg twice daily');
-- Newly Inserted Data
INSERT INTO Medication(Session_ID, Medicine_Name, Prescription_Reason, Dosage) VALUES
(2022, 'Aspirin', 'Headache', '1 tablet twice daily'),
(2030, 'Ibuprofen', 'Pain relief', '1 tablet every 6 hours'),
(2019, 'Amoxicillin', 'Infection', '500 mg three times a day'),
(2026, 'Lisinopril', 'Hypertension', '10 mg once daily'),
(2034, 'Levothyroxine', 'Thyroid disorder', '50 mcg daily'),
(2025, 'Atorvastatin', 'Cholesterol management', '20 mg nightly'),
(2023, 'Metformin', 'Diabetes', '500 mg twice a day'),
(2031, 'Sertraline', 'Depression', '50 mg daily'),
(2027, 'Omeprazole', 'Acid reflux', '20 mg once daily'),
(2020, 'Hydrochlorothiazide', 'Fluid retention', '25 mg once daily'),
(2018, 'Gabapentin', 'Neuropathic pain', '300 mg three times a day'),
(2021, 'Escitalopram', 'Anxiety', '10 mg daily'),
(2032, 'Warfarin', 'Blood clot prevention', '5 mg daily'),
(2029, 'Cetirizine', 'Allergies', '10 mg as needed'),
(2028, 'Metoprolol', 'Hypertension', '25 mg twice daily'),
(2024, 'Diazepam', 'Muscle spasm', '5 mg as needed'),
(2017, 'Naproxen', 'Inflammation', '250 mg twice a day'),
(2033, 'Tramadol', 'Pain management', '50 mg every 4-6 hours'),
(2034, 'Ranitidine', 'Gastric ulcer', '150 mg twice daily');

--QUERY TO DISPLAY CONTENTS OF MEDIVATION TABLE:
SELECT Medication_ID,Session_ID, Medicine_Name, Prescription_Reason, Dosage FROM Medication;

------------------------------------------------------------------------------------------------------------------------------
--Query used to reset the identity counter for the mentioned table:
-- DBCC CHECKIDENT('Progress', RESEED, 7999)

--Query to Delete records:
--DELETE FROM Note WHERE Session_ID=2000;

------------------------------------------------------------------------------------------------------------------------------

-- INSERTING DATA INTO MEDICAL HISTORY TABLE:
INSERT INTO MedicalHistory(Patient_ID, Therapist_ID, Referred_By, Allergies, Medication, Emergency_Contact) VALUES 
(110, 1011, 'Dr. Smith', 'Penicillin', 'Lorazepam, Sertraline', '555-555-5555'),
(113, 1009, 'Dr. Johnson', NULL, 'Amitriptyline', '555-123-4567'),
(112, 1007, 'Dr. Davis', 'Sulfa Drugs', 'Buspirone, Fluoxetine', '555-987-6543'),
(111, 1012, 'Dr. Miller', 'Latex', 'Venlafaxine', '555-789-0123'),
(114, 1006, 'Dr. Brown', 'Peanuts', 'Olanzapine, Diazepam', '555-321-0987'),
(100, 1000, 'Dr. Anderson', 'Shellfish', 'Lorazepam, Escitalopram', '555-111-2222'),
(103, 1013, 'Dr. Wilson', NULL, 'Quetiapine, Clonazepam', '555-222-3333'),
(105, 1005, 'Dr. Garcia', 'Penicillin', 'Risperidone, Lurasidone', '555-444-5555'),
(107, 1004, 'Dr. Taylor', NULL, 'Hydroxyzine, Citalopram', '555-555-6666'),
(114, 1010, 'Dr. Moore', 'Sulfa Drugs', 'Clomipramine, Alprazolam', '555-666-7777'),
(109, 1008, 'Dr. Martinez', 'Latex', 'Bupropion, Mirtazapine', '555-777-8888'),
(101, 1014, 'Dr. Clark', 'Peanuts', 'Haloperidol, Escitalopram', '555-888-9999'),
(110, 1002, 'Dr. White', 'Shellfish', 'Risperidone, Lurasidone', '555-999-0000'),
(113, 1001, 'Dr. Hall', 'Pollen', 'Mirtazapine, Haloperidol', '555-000-1111'),
(102, 1003, 'Dr. Adams', 'Pollen', 'Bupropion, Clomipramine', '555-123-4567'),
(108, 1000, 'Dr. Anderson', 'Peanuts', 'Alprazolam, Hydroxyzine', '555-234-5678'),
(103, 1012, 'Dr. Miller', 'Sulfa Drugs', 'Diazepam, Escitalopram', '555-345-6789'),
(106, 1007, 'Dr. Davis', 'Shellfish', 'Fluoxetine, Citalopram', '555-456-7890'),
(104, 1006, 'Dr. Brown', 'Latex', 'Sertraline, Buspirone', '555-567-8901'),
(107, 1014, 'Dr. Hill', 'Pollen', 'Clonazepam, Lorazepam', '555-678-9012');

--QUERY TO DIAPLAY CONTENTS OF MEDICAL HISTORY TABLE:
SELECT MedHistory_ID,Patient_ID, Therapist_ID, Referred_By, Allergies, Medication, Emergency_Contact FROM MedicalHistory;

------------------------------------------------------------------------------------------------------------------------------

--Query used to reset the identity counter for the mentioned table:
-- DBCC CHECKIDENT('Progress', RESEED, 8999)

--Query to Delete records:
--DELETE FROM Note WHERE Patient_ID=101;

------------------------------------------------------------------------------------------------------------------------------
   
-- INSERTING DATA INTO BILL TABLE:
INSERT INTO Bill(Session_ID, Billing_Date) VALUES 
(2007, NULL),
(2012, NULL),
(2009, NULL),
(2003, NULL),
(2015, NULL),
(2001, NULL),
(2008, NULL),
(2002, NULL),
(2011, NULL),
(2005, NULL),
(2016, NULL),
(2004, NULL),
(2010, NULL),
(2006, NULL),
(2000, NULL),
(2013, NULL),
(2009, NULL),
(2014, NULL),
(2007, NULL),
(2017, NULL);
-- Newly Inserted Data
INSERT INTO Bill(Session_ID, Billing_Date) VALUES 
(2018, NULL),
(2019, NULL),
(2020, NULL),
(2021, NULL),
(2022, NULL),
(2023, NULL),
(2024, NULL),
(2025, NULL),
(2026, NULL),
(2027, NULL),
(2028, NULL),
(2029, NULL),
(2030, NULL),
(2031, NULL),
(2032, NULL),
(2033, NULL),
(2034, NULL);
--QUERY TO DISPLAY CONTENST OF BILL TABLE:
SELECT Bill_ID,Session_ID, Billing_Date FROM Bill;

------------------------------------------------------------------------------------------------------------------------------

--Query used to reset the identity counter for the mentioned table:
-- DBCC CHECKIDENT('Progress', RESEED, 9999)

--Query to Delete records:
--DELETE FROM Note WHERE Session_ID=2000;

------------------------------------------------------------------------------------------------------------------------------

