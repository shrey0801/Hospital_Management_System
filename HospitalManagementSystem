
CREATE TABLE Patient (
    Patient_ID CHAR(2),
    Patient_Name VARCHAR(45) NOT NULL,
    Phone_Number NUMERIC(10) NOT NULL UNIQUE,
    PRIMARY KEY (Patient_ID)
);
CREATE TABLE Hospital (
    Hospital_ID CHAR(2),
    Patient_ID CHAR(2) NOT NULL UNIQUE,
    PRIMARY KEY (Hospital_ID),
    FOREIGN KEY (Patient_ID)
        REFERENCES Patient (Patient_ID)
);




insert into Patient (Patient_ID , Patient_Name , Phone_Number)
values ('P1' , 'Shrey thakkar' , '7777999326') , ('P2' , 'Megha morakhia' , '7777999327') , ('P3' , 'Yagna Patel' , '7777999328') , ('P4' , 'Himashi Panchal' , '7777999329') , 
('P5' , 'Pushti yadav' , '7777999321') , ('P6' , 'Yashvi Thacker' , '7777999322');
insert into Hospital ( Hospital_ID , Patient_ID )
Values ( 'H1' , 'P1' ) , ( 'H2' , 'P2') ,  ( 'H3' , 'P3' ) , ('H4' , 'P4' ) , ('H5' , 'P5' ) ;
CREATE TABLE vaccine (
    Vaccine_ID VARCHAR(2),
    Vaccine_name VARCHAR(45) UNIQUE,
    Manufacturing_Date DATE NOT NULL,
    Expiry_Date DATE NOT NULL,
    PRIMARY KEY (Vaccine_ID)
);
INSERT INTO vaccine (Vaccine_ID, Vaccine_name, Manufacturing_Date, Expiry_Date)
VALUES ('V1', 'Astrazeneca', '2021-1-1', '2021-10-9') , ('V2',	'IPV', '2020-11-2',	'2020-12-2') , ('V3', 'TT', '2020-8-10', '2020-9-10') , ('V4', 'BCG', '2020-11-10', '2020-12-10'),
('V5',	'FDA', '2021-1-10', '2021-2-10');
CREATE TABLE Diseases (
    Vaccine_ID VARCHAR(2),
    Disease_Name VARCHAR(45) NOT NULL,
    Vaccine_Name VARCHAR(45) UNIQUE,
    PRIMARY KEY (Vaccine_ID),
    FOREIGN KEY (Vaccine_ID)
        REFERENCES Vaccine (Vaccine_ID),
    FOREIGN KEY (Vaccine_Name)
        REFERENCES Vaccine (Vaccine_Name)
);
insert into Diseases(Vaccine_ID , Disease_Name , Vaccine_Name)
values ('V1' , 'Covid19' , 'Astrazeneca') , ('V2' , 'polio' , 'IPV') , ('V3' , 'tetanus' , 'TT') , ('V4' , 'TB' , 'BCG') , ('V5' , 'small pox' , 'FDA');
CREATE TABLE Vaccination_Center (
    Vaccine_ID VARCHAR(2),
    Name_of_VC VARCHAR(45) UNIQUE,
    PRIMARY KEY (Vaccine_ID),
    FOREIGN KEY (Vaccine_ID)
        REFERENCES Vaccine (Vaccine_ID)
);

insert into Vaccination_Center(Vaccine_ID , Name_of_VC)
values ('V1' , 'Aarogya') , ('V2' , 'The Brazos Center') , ('V3' , 'Jeevan Sanstha') , ('V4' , 'Bharat Seva') , ('V5' , 'setu center');

CREATE TABLE Doctor (
    Doctor_ID CHAR(2),
    Qualification VARCHAR(45) NOT NULL,
    Name_of_VC VARCHAR(45) UNIQUE,
    Phone_No BIGINT NOT NULL,
    PRIMARY KEY (Doctor_ID),
    FOREIGN KEY (Name_of_VC)
        REFERENCES vaccination_center (Name_of_VC)
);
insert into Doctor(Doctor_ID , Qualification, Name_of_VC, Phone_No )
 values('D1','MBBS','Aarogya','9999999980') , ('D2'	,'BMBS','The Brazos Center','9999999981') , ('D3','MBChB','Jeevan Sanstha','9999999982') , 
('D4','MBBCh' ,'Bharat Seva',	'9999999983');
CREATE TABLE Storage (
    Storage_ID VARCHAR(2),
    Storage_Name VARCHAR(100) NOT NULL UNIQUE,
    Storage_Address VARCHAR(100) NOT NULL UNIQUE,
    PRIMARY KEY (Storage_ID)
);
INSERT INTO  Storage (Storage_ID, Storage_Name, Storage_Address) 
values ('S1', 'patel_sotrage_facility', '4_gulabganj_boriwali_east_mumbai_maharashtra') , ('S2', 'shah_storage_facility', '6_hillstreet_delhi') 
, ('S3', 'sharma_storage_facility', '10_mahalaxmi_lane_vadodra_gujarat') , ('S4',	'gandhi_storage_facility', '3_science_city_road_ahmedabad_gujarat') , ('S5',	'modi_storage_facility', '8_bharuch_ONGC_housing_facility_gujarat');
CREATE TABLE Stock (
    Batch_No CHAR(2) UNIQUE,
    Vaccine_ID VARCHAR(2),
    No_of_Vaccines INT NOT NULL,
    Recieved_Date DATE NOT NULL,
    PRIMARY KEY (Vaccine_ID),
    FOREIGN KEY (Vaccine_ID)
        REFERENCES Vaccine (Vaccine_ID)
);
insert into Stock(Batch_No , Vaccine_ID , No_of_Vaccines , Recieved_Date)
values ('B1' , 'V1' , '20' , '2021-02-20') , ('B2' , 'V2' , '20' , '2021-02-20') , ('B3' , 'V3' , '30' , '2021-04-23') , ('B4' , 'V4' , '30' , '2021-04-23') , ('B5' , 'V5' , '35' , '2021-01-17');
CREATE TABLE RFID (
    Vaccine_ID VARCHAR(2),
    Patient_ID CHAR(2),
    Doctor_ID CHAR(2),
    Storage_ID CHAR(2),
    Batch_No CHAR(2),
    PRIMARY KEY (Vaccine_ID),
    FOREIGN KEY (Patient_ID)
        REFERENCES Patient (Patient_ID),
    FOREIGN KEY (Doctor_ID)
        REFERENCES Doctor (Doctor_ID),
    FOREIGN KEY (Storage_ID)
        REFERENCES Storage (Storage_ID),
    FOREIGN KEY (Batch_No)
        REFERENCES Stock (Batch_No)
);
insert into Doctor(Doctor_ID , Qualification , Name_of_VC , Phone_No)
values ('D5' , 'B.Med' , 'setu center' , '9999999984');
insert into RFID(Vaccine_ID , Patient_ID , Doctor_ID , Storage_ID , Batch_No)
values ('V1' , 'P1' , 'D1' , 'S1' , 'B1') , ('V2' , 'P2' , 'D2' , 'S2' , 'B2') , ('V3' , 'P3' , 'D3' , 'S3' , 'B3') , ('V4' , 'P4' , 'D4' , 'S4' , 'B4') , 
('V5' , 'P5' , 'D5' , 'S5' , 'B5');
CREATE TABLE Appointment (
    Patient_ID CHAR(2),
    Doctor_ID CHAR(2),
    Appointment_Date DATE NOT NULL,
    PRIMARY KEY (Patient_ID),
    FOREIGN KEY (Doctor_ID)
        REFERENCES Doctor (Doctor_ID),
    FOREIGN KEY (Patient_ID)
        REFERENCES Patient (Patient_ID)
);
insert into Appointment(Patient_ID , Doctor_ID , Appointment_Date)
values ('P1' , 'D1' , '2021-03-01') , ('P2' , 'D2' , '2021-03-03') , ('P3' , 'D3' , '2021-03-02') , ('P4' , 'D4' , '2021-03-06') , ('P5' , 'D5' , '2021-03-05');
CREATE TABLE Compensation (
    Vaccine_ID VARCHAR(2),
    VaccineProvider_Name VARCHAR(45),
    Compensation_Provided INT,
    PRIMARY KEY (Vaccine_ID),
    FOREIGN KEY (Vaccine_ID)
        REFERENCES Vaccine (Vaccine_ID)
);
insert into Compensation(Vaccine_ID , VaccineProvider_Name , Compensation_Provided)
values ('V1' , 'Suresh Reddy' , '10000') , ('V2' , 'Amit Kapoor' , '12000') , ('V3' , 'Raj Sharma' , '15000') , ('V4' , 'Nitya Shah' , '20000') , ('V5' , 'Rashmi Desai' , '12000');
alter table Vaccine
add VaccineProvider_Name varchar(45);
alter table Vaccine
drop VaccineProvider_Name;
CREATE TABLE Room (
    Room_Number INT,
    Floor INT NOT NULL,
    Hospital_ID CHAR(2),
    PRIMARY KEY (Room_Number),
    FOREIGN KEY (Hospital_ID)
        REFERENCES Hospital (Hospital_ID)
);
insert into Room(Room_Number, Floor, Hospital_ID)
values ('102',	'1', 'H1') , ('204', '2',	'H2'), ('305',	'3',	'H3'),
 ('206',	'2',	'H4'), ('103',	'1'	,'H5');
 alter table Compensation
 modify VaccineProvider_Name varchar(45) unique;
CREATE TABLE VaccineProvider (
    Vaccine_ID CHAR(2),
    Vaccine_Name VARCHAR(45),
    VaccineProvider_Name VARCHAR(45) UNIQUE,
    PRIMARY KEY (Vaccine_ID),
    FOREIGN KEY (Vaccine_ID)
        REFERENCES Vaccine (Vaccine_ID),
    FOREIGN KEY (Vaccine_Name)
        REFERENCES Vaccine (Vaccine_Name),
    FOREIGN KEY (VaccineProvider_Name)
        REFERENCES Compensation (VaccineProvider_Name)
);
insert into VaccineProvider(Vaccine_ID, Vaccine_Name, VaccineProvider_Name  )
values ('V1',	'Astrazeneca','Suresh Reddy'), ('V2',	'IPV',	'Amit Kapoor'), ('V3',	'TT',	'Raj Sharma'), 
('V4',	'BCG',	'Nitya Shah'), ('V5' , 'FDA',	'Rashmi Desai');
CREATE TABLE Staff (
    ID CHAR(2),
    Vaccine_ID VARCHAR(2),
    Gender VARCHAR(10) NOT NULL,
    ID_Proof VARCHAR(20) NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (Vaccine_ID)
        REFERENCES Vaccine (Vaccine_ID)
);
insert into Staff(ID, Vaccine_ID, Gender, ID_Proof)
values('S1',	'V1',	'Male',	'Aadhar Card'), ('S2',	'V2',	'Male'	,'PAN Card'), 
('S3',	'V3',	'Female',	'Election Card'), 
('S4',	'V4',	'Male',	'Passport'), ('S5',	'V5',	'Female'	,'Aadhar Card');
CREATE TABLE Temperature (
    Patient_ID CHAR(2),
    Pre_Vaccination_Temp NUMERIC NOT NULL,
    Post_Vaccination_Temp NUMERIC NOT NULL,
    PRIMARY KEY (Patient_ID),
    FOREIGN KEY (Patient_ID)
        REFERENCES Patient (Patient_ID)
);
insert into Temperature(Patient_ID , Pre_Vaccination_Temp , Post_Vaccination_Temp)
Values ('P1' , '35','42') , ('P2' , '36','39') , ('P3' , '38','45') , ('P4' , '40','38') , ('P5' , '42','45');
CREATE TABLE Patient_Address (
    Patient_ID CHAR(2),
    City VARCHAR(30),
    State VARCHAR(30),
    Country VARCHAR(30),
    PRIMARY KEY (Patient_ID),
    FOREIGN KEY (Patient_ID)
        REFERENCES Patient (Patient_ID)
);
insert into Patient_Address (Patient_ID , City , State , Country)
Values ('P1' , 'Ahmedabad','Gujarat','India') , ('P2' , 'Bhuj','Gujarat','India') , ('P3' , 'Nagpur','Maharashtra','India') , ('P4' , 'Rajkot','Gujarat','India') , ('P5' , 'Jaipur','Rajasthan','India');

CREATE TABLE Management (
    Vaccine_ID VARCHAR(2),
    Patient_ID CHAR(2),
    Batch_No CHAR(2),
    PRIMARY KEY (Vaccine_ID),
    FOREIGN KEY (Patient_ID)
        REFERENCES Patient (Patient_ID),
    FOREIGN KEY (Vaccine_ID)
        REFERENCES Vaccine (Vaccine_ID),
    FOREIGN KEY (Batch_No)
        REFERENCES Stock (Batch_No)
);
insert into Management (Vaccine_ID , Patient_ID , Batch_no)
values ('V1','P1','B1') ,  ('V2','P2','B2') ,  ('V3','P3','B3') ,  ('V4','P4','B4') ,  ('V5','P5','B5');

CREATE TABLE FAQs (
    FAQ_ID CHAR(2),
    Question VARCHAR(200),
    Answers VARCHAR(400),
    PRIMARY KEY (FAQ_ID)
);


insert into FAQs(FAQ_ID , Question , Answers)
values ('F1' , 'Why are vaccinations important?' , 'Vaccinations protect your child against serious diseases by stimulating the immune system to create antibodies against certain bacteria or viruses.'),													
('F2' , 'Are vaccines safe?' , 'Vaccines are safe and scientists continually work to make sure they become even safer. Every vaccine undergoes extensive testing before being licensed and vaccine safety continues to be monitored as long as a vaccine is in use.'),														
('F3' , 'Do vaccines have side effects?' , 'Vaccines are among the safest medicines available. Some common side effects are a sore arm or fever. There is a very small risk that a serious problems could occur after getting a vaccine.'),														
('F4' , 'What Do Vaccines Do?' , 'Vaccines work by preparing the body to fight illness. Each contains either a dead or a weakened germ (or parts of it) that causes a particular disease.'),														
('F5' , 'Why Do Healthy Kids Need to Be Immunized?' ,'Vaccinations are intended to help keep healthy kids healthy. Because vaccines work by protecting the body before disease strikes, if you wait until your child gets sick, it will be too late for the vaccine to work. The best time to immunize kids is when they are healthy');

alter table Patient
modify Patient_Name varchar(45) unique;

CREATE TABLE Post_Vaccination (
    Patient_ID CHAR(2),
    Queries VARCHAR(100) NOT NULL,
    PRIMARY KEY (Patient_ID),
    FOREIGN KEY (Patient_ID)
        REFERENCES Patient (Patient_ID)
);


insert into Post_Vaccination(Patient_ID  , Queries)
values ('P1' ,	'frequent fever and laziness'),	
('P2' ,		'redness of eyes'),	
('P3' ,		'pain in body'),	
('P4' ,		'vomitting'),	
('P5' ,		'cough');

CREATE TABLE Administrator (
    Login_ID VARCHAR(3),
    password VARCHAR(3) NOT NULL,
    Patient_ID CHAR(2),
    Doctor_ID CHAR(2),
    PRIMARY KEY (Login_ID),
    FOREIGN KEY (Patient_ID)
        REFERENCES Patient (Patient_ID),
    FOREIGN KEY (Doctor_ID)
        REFERENCES Doctor (Doctor_ID)
);

INSERT INTO administrator (Login_ID, password, Patient_ID, Doctor_ID )
VALUES ('AD1', 'ABC', 'P1', 'D1');
INSERT INTO administrator (Login_ID, password, Patient_ID, Doctor_ID )
VALUES ( 'AD2', 'DEF', 'P2', 'D2');
INSERT INTO administrator (Login_ID, password, Patient_ID, Doctor_ID )
VALUES ( 'AD3', 'GHI', 'P3', 'D3');
INSERT INTO administrator (Login_ID, password, Patient_ID, Doctor_ID )
VALUES ( 'AD4', 'JKL', 'P4', 'D4');
INSERT INTO administrator (Login_ID, password, Patient_ID, Doctor_ID )
VALUES ( 'AD5', 'MNO', 'P5', 'D5');

alter table Diseases
modify Disease_Name varchar(45) unique;

CREATE TABLE Report (
    Patient_ID CHAR(2),
    Patient_Name VARCHAR(45) UNIQUE,
    Disease_Name VARCHAR(45) UNIQUE,
    Report_Result VARCHAR(10) NOT NULL,
    PRIMARY KEY (Patient_ID),
    FOREIGN KEY (Patient_Name)
        REFERENCES Patient (Patient_Name),
    FOREIGN KEY (Patient_ID)
        REFERENCES Patient (Patient_ID),
    FOREIGN KEY (Disease_Name)
        REFERENCES Diseases (Disease_Name)
);
insert into Report(Patient_ID , Patient_Name , Disease_Name , Report_Result)
values('P1' , 'Shrey thakkar' , 'Covid19' , 'negative') , ('P2' , 'Megha morakhia' , 'polio' , 'negative') , ('P3' , 'Yagna Patel' , 'tetanus' , 'positive') , 
('P4' , 'Himashi Panchal' , 'TB' , 'negative') , ('P5' , 'Pushti yadav' , 'small pox' , 'negative');

CREATE TABLE Payment (
    Patient_ID CHAR(2),
    Payment_ID CHAR(2),
    Payment_Status VARCHAR(45),
    PRIMARY KEY (Payment_ID),
    FOREIGN KEY (Patient_ID)
        REFERENCES Patient (Patient_ID)
);
insert into Payment(Patient_ID , Payment_ID , Payment_Status)
values('P1' , 'A1' , 'paid') , ('P2' , 'A2' , 'paid') , ('P3' , 'A3' , 'not paid') , ('P4' , 'A4' , 'not paid') , ('P5' , 'A5' , 'paid');

CREATE TABLE Damaged_Stock (
    Batch_No CHAR(2),
    Number_of_damaged_vaccines FLOAT NOT NULL,
    PRIMARY KEY (Batch_No)
);
insert into Damaged_Stock(Batch_No , Number_of_damaged_vaccines)
values('B1' , '5') , ('B2' , '2') , ('B3' , '4') , ('B4' , '2') , ('B5' , '1');

CREATE TABLE vaccine_count (
    Vaccine_count FLOAT NOT NULL,
    Vaccine_ID VARCHAR(2),
    PRIMARY KEY (Vaccine_ID),
    FOREIGN KEY (Vaccine_ID)
        REFERENCES Vaccine (Vaccine_ID)
);
INSERT INTO vaccine_count  (Vaccine_ID, Vaccine_count)
VALUES ('V1' , '10');
INSERT INTO vaccine_count  (Vaccine_ID, Vaccine_count)
VALUES ('V2' , '12');
INSERT INTO vaccine_count  (Vaccine_ID, Vaccine_count)
VALUES ('V3' , '14');
INSERT INTO vaccine_count  (Vaccine_ID, Vaccine_count)
VALUES ('V4' , '12');
INSERT INTO vaccine_count  (Vaccine_ID, Vaccine_count)
VALUES ('V5' , '13');
