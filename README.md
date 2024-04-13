**REMOTE COUNSELLING MANAGEMENT SYSTEM**

**OVERVIEW:**
In the current rapid-paced society, mental well-being is something that is not valued as much as it should be. The hustle and bustle of modern life has contributed to a significant rise in mental health issues, which has in turn established the need for better mental health care and counselling systems. Mental trauma is a common issue faced by people, irrespective of their age, background, or position in society. Lately, the importance of mental well-being has been significantly recognized. Unaddressed mental trauma leads to severe depression and suicidal thoughts. Many people consider not going to therapy because they can’t face discussing their issues in person. In that case, a remote counselling system would be of huge help.

**OBJECTIVES:**
This system can enable us to provide support for better mental health.Offers help to cope up with anything and everything: Issues with family, education, mental trauma, work pressure, depression, etc.Helps keep self-confidence stable. Online sessions can help build positivity and confidence among people.Virtual counselling can help people in rehabilitation avoid relapsing.It helps save time and money, and it can help to maintain a record of each session.

**PURPOSE:**
The purpose of an online counselling system is as follows:

-> People tend to keep a low profile when they are going through a difficult phase. In this scenario, counselling is immensely important, not only to share your feelings but also to get professional advice on how to deal with all the issues being faced.

-> Online counselling is more flexible than in-person sessions, and it also provides immediate attention in an emergency. 

-> Online counselling is cost-efficient, saves travel time, and is more convenient and accessible. 

-> Online sessions can streamline the appointment process and can also help with rescheduling and other services. The sessions can be conducted in a convenient way, so people don’t have to change their routines for in-person sessions. 

-> Privacy and anonymity can be easily maintained in online sessions. People are not yet very comfortable sharing that they are getting help for their mental health, so this system helps in such a scenario.

**BUSINESS PROBLEM:**

-> The business problem of a Remote Counseling Management System is to develop a database system that schedules appointments for patients virtually. The system needs to manage different aspects of online counseling, including appointment booking, appointment history, billing, patient medication. To accomplish this, the system requires a database that can store and organize all relevant data and allow easy access to it when needed. 

-> Our primary requirement is to provide patients with a platform where they can virtually connect with a therapist and get professional help based on their medical history. There will be Therapist and Patient entities. After every appointment and reschedule, the patient will be notified through SMS. All sessions and appointments will be tracked and the information will be stored for future references. Payment and billing will be separately recorded. There will be a medical history field to keep track of who has referred the patient, previous medical condition, current medications.

-> Patients are divided into different categories based on parameters like: Age, Profession (Employee, Student) and along with patient medical history details. Based on the primary issue the patient is having, a therapist is assigned to the patient. A Communication is sent by or to the Patient and Therapist for updates like reschedule or cancellation of appointment. The system will check for the availability of the therapist. This needs to have a relationship between Slot Availability and Session details.

-> In summary, Virtual Counseling Management System must include the following entities: Patient, Therapist, Session, Appointment Details Note, Slot Availability, Treatment Plan, Progress, Medication, Billing, Feedback, Medical History. All these entities will be connected with one-one, one-many, many-one and many-many relationships. The main decision is to select suitable data types for all entities and relationships, determining the cardinality of each relationship with entities.

**LIST OF ENTITIES:**

Patient: This entity represents the Patient’s information such as ID, Name, Phone, Gender, DOB, and Address.

Therapist: This Entity represents Therapist information including the attributes such as ID, Name, Phone, License Details and specialty.

Session: This entity will include the details regarding the appointment including the Date, Time, Duration, Session notes (Notes/Descriptions)

Slot Availability: This entity will provide the confirmation regarding the availability, and details about slot date, time and slot ID. 

Note: This entity provides details of when the not has been created and shows what pointers regarding the session has been added.

Treatment Plan: This Entity represents the milestones, interventions and diagnosis achieved, uniquely identified by a Treatment ID.

Progress: This entity will provide details of contents that has been discussed in the session, along with attributes like Note ID, Date created and progress.

Medication: This entity will provide details of medication prescribed, reason for prescription and dosage. It is uniquely identified by a Medication ID.

Medical History: This entity will include the information of the previous appointment which includes information such Referred by, History, Medications, Emergency Contact, allergies etc. by considering the TherapistID and PatientID.

Bill: This Entity includes the payment history which includes BillingID, TherapistID, PatientID along with the fees, Billing date, Fees and Payment Status.

Feedback: This entity comes after all the process is done which includes FeedbackID, Ratings and comments by referring PatientID and TherapistID.

**KEY DESIGN DECISIONS**

**PATIENT:**
Store the Patient Details such as Name, Phone, Gender, DOB, Address.
Create a relationship with Session to store patient appointment details. Also, create relationships with Feedback, Session, Slot Availability, Bill, Medical History to store and retrieve patient information.

**SESSION:**
Stores the fields like Date, Time, Duration, Notes.
Use Session ID as a Primary Key to retrieve the associated items.
Create a relationship with Patient, Therapist, Session, Appointment Details Note, Treatment Plan, Progress, Medication, Billing, Feedback.

**THERAPIST:**
It stores attributes such as Name, Phone, Specialty, Qualification, License, and available days of doctor.
Create a relationship with slot availability and Feedback. Also, create relationships with patients through Medical History, Appointment History and Communication to track the relevant information.

**BILL:**
Stores Billing Information such as Fees, Billing Date and Payment Status.
Create Relationships with Patients and Sessions to store relevant information.

**APPOINTMENT DETAILS:**
Appointment Details store information like Sender, Recipient, Subject, Content and Date Sent.
Has direct relationship with Session.

**FEEDBACK:**
Store Information about Therapists like Ratings and Comments.
Create a Direct Relationship with the Patient and Session.

**MEDICAL HISTORY:**
Store Information like Medications, Emergency Contacts, History, Referred-By and Allergies.
Create Relationships with Patient and Therapist to store the relevant information.

**NOTE:**
Stores information about session notes.
Create a relationship with the Session.

**TREATMENT PLAN:**
Store Information like Treatment milestones, diagnosis and interventions.
Create Relationship with Session.

**PROGRESS:**
Store Information like Contents discussed during session, Date created and Progress updates.
Create Relationship with Session.

**MEDICATION:**
Store Information like Medicines prescribed, reason and dosage. 
Create Relationship with Session.

**SLOT AVAILABILITY:**
Store Information like Date, Time, Availability Status.
Create Relationships with Patient and Therapist to store the relevant information.

**RELATIONSHIP AMONG ENTITIES:**

**1.	Schedules— (Patient 🡪 Session)**
One patient can Schedule one or more sessions
A session must be scheduled by a single patient.
The cardinality is mandatory one to many.

**2.	Handled—(Session 🡪 Therapist)**
A session must be handled by a single therapist.
A therapist can handle multiple sessions.
The cardinality is many to mandatory one.

**3. Gives—(Patient 🡪 Feedback)**
A patient may give feedback or feedback is not necessarily given by a patient.
Optional one to optional one cardinality.

**4.	Supplies—(Patient 🡪 Medical History)**
Patient may provide one or more fields about medicalhistory.
A medical history is provided by a single patient.
One to optional many cardinality.

**5.	Checks—(Patient 🡪 Slot Availability)**
Patients can browse one or more available slots whereas a slot is allocated for a single patient.
Mandatory one to optional many cardinality.

**6.	Provides—(Therapist 🡪 Slot Availability)**
A therapist can provide one or more slots whereas a slot as a single therapist.
Mandatory one to optional many cardinality.

**7.	Accessed---(Therapist 🡪 Medical History)**
A therapist can access any number of medical history regarding a patient whereas medicalhistory is accessed by a single therapist.
Mandatory one to optional many cardinality.

**8.	Pays---(Patient 🡪 Bill)**
A patient pays one or more bills.
A bill is paid by a single patient.
Mandatory one to optional many cardinality.

**9. Generates—(Session 🡪 Bill)**
A session generates one or more bills whereas a bill is associated with a single session.
Mandatory one to optional many cardinality.

**10.	Session 🡪 Appointment Details Relationship.**
A session can have one or more appointments and an appointment can have only a single session.
Mandatory one to optional many cardinality.

**11.	Session 🡪 Treatment Plan**
Every Session has a treatmentplan and a treatmentplan is linked to a single Session.
Mandatory one to Mandatory one.

**12. Session 🡪 Progress**
A session may have progress and progress is related to a single session.
Mandatory one to optional one cardinality.

**13.	Session 🡪 Note**
A session can have one or more notes given by therapist whereas a note is for a single session.
Mandatory one to optional many cardinality.

**14.	Session 🡪 Medication**
A session has a single medication plan and medication is based on a single session.
Mandatory one to Mandatory one cardinality.

**15. Has (Feedback 🡪 Session)**
A session  may have multiple feedbacks 
A feedback is for a single session.
Optional many to mandatory one cardinality.
















