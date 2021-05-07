/*select avg(Post_Vaccination_Temp)
from Temperature;

select Char_length(VaccineProvider_Name)
from Compensation;

select abs(Pre_Vaccination_Temp)
from Temperature;

SELECT ADDDATE(Appointment_Date, INTERVAL 10 DAY)
from Appointment;

select count(Patient_ID) , Post_Vaccination_Temp
from temperature
group by (Post_Vaccination_Temp);

select*from Temperature
order by (Post_Vaccination_Temp);

select count(Patient_ID) , Post_Vaccination_Temp
from temperature
group by (Post_Vaccination_Temp)
having Post_Vaccination_Temp > 40;

select RFID.Patient_ID , Vaccine.Vaccine_ID
from RFID
inner join Vaccine on RFID.Vaccine_ID = Vaccine.Vaccine_ID;

SELECT Batch_No
FROM Stock
WHERE EXISTS (SELECT Batch_No FROM damaged_stock WHERE damaged_stock.Batch_No = Stock.Batch_No AND Number_of_damaged_vaccines <2 );

SELECT Batch_No
FROM Stock
WHERE Batch_NO = any (SELECT Batch_No FROM damaged_stock WHERE  Number_of_damaged_vaccines <2 );

SELECT Batch_No
FROM Stock
WHERE Batch_NO = all (SELECT Batch_No FROM damaged_stock WHERE  Number_of_damaged_vaccines <2 );

select Vaccine_ID from vaccine
union
select Vaccine_ID from diseases;

select min(Pre_Vaccination_Temp)
from Temperature;

SELECT CONCAT(City," ",State," ",Country) AS Address
FROM Patient_Address;

SELECT Post_Vaccination_Temp 
FROM Temperature
where Post_Vaccination_Temp = GREATEST(42,39,45,38);

SELECT DATEDIFF("2020-09-10","2020-10-10")
from Vaccine
where Manufacturing_Date = 2020-09-10 and Expiry_Date = 2020-10-10;

SELECT Patient_ID FROM Patient
UNION ALL
SELECT Patient_ID FROM Hospital;

select Patient_Name,
(select count(Hospital_ID) 
from Hospital
where Patient.Patient_ID = Hospital.Patient_ID)
as Patient_Hospital
from Patient;

select Patient_ID, Patient_Name and Phone_Number
from Patient
where exists
(select Appointment_Date
from Appointment
where Patient.Patient_ID = Appointment.Patient_ID);

select ID_Proof, count(Vaccine_ID)
from Staff
group by ID_Proof;

select Vaccine_name, Expiry_Date
from Vaccine
group by (Vaccine_name)
having Expiry_Date = 2021-02-03;

select * from Patient
order by Patient_Name DESC;

select Patient.Patient_ID, Patient_name, Phone_Number 
from Patient
left join Patient_Address on Patient.Patient_ID = Patient_Address.Patient_ID
order by Patient.Patient_ID;

select Patient_ID, Patient_Name and Phone_Number
from Patient
where exists
(select Appointment_Date
from Appointment
where Patient.Patient_ID = Appointment.Patient_ID);

select State
from Patient_Address
where Patient_ID = Any(Select Patient_ID from Patient where Patient_name = "Shrey thakkar");

select State
from Patient_Address
where Patient_ID = Any(Select Patient_ID from Patient where Patient_name = "Shrey thakkar");

select avg(Vaccine_count)
 from vaccine_count;
 
 Select lower(Vaccine_Name)
 from Vaccine;
 
 Select sqrt(Vaccine_Count)
 from vaccine_count;
 
 select count(Patient_ID), queries
 from post_vaccination
 group by (Patient_ID);
 
 select year(Appointment_Date)
 from Appointment;
 
select Patient_ID
from Hospital_ID
except
select Patient_ID
from Diseases;

select Patient_ID,
(select count(Hospital_ID) 
from Hospital
where Patient.Patient_ID = Hospital.Patient_ID)
as Patient_Hospital
from Patient;

 select count(Patient_ID), queries
 from post_vaccination
 group by (Patient_ID);
 
 select count(Patient_ID), queries
 from post_vaccination
 group by patient_id
 order by count(Patient_ID) desc;
 
 select count(Patient_ID), queries
 from post_vaccination
 group by count(Patient_ID)
 having count(Patient_ID)=1;
 
select sum(Vaccine_count)
from vaccine_count;

select reverse(Vaccine_count)
from vaccine_count;

SELECT ROUND(Vaccine_count)
from vaccine_count;

SELECT DAY(appointment_date)
from appointment;

select vaccine_id from vaccine
MINUS;
select vaccine_id from vaccine_count;

SELECT COUNT(Vaccine_count)
FROM vaccine_count
HAVING COUNT(Vaccine_count)<10;

SELECT COUNT(Patient_ID)
FROM report
GROUP BY Report_Result;

select max(Post_Vaccination_Temp)
from Temperature;

select batch_no, FORMAT(No_of_vaccines,4)
from stock
where No_of_vaccines>25;

SELECT Batch_No , Number_of_damaged_vaccines
FROM damaged_Stock
WHERE Batch_No<LEAST(5,3,2);

select curdate() +1
from Appointment
where Appointment_Date = '2021-03-03';

select Hospital_ID from Hospital
intersect
select Hospital_ID from Room;

select Patient_name,    
   (select max(Post_Vaccination_temp)               
    from temperature               
    where Patient.Patient_id = temperature.patient_id)    
    as Max_Temp
from Patient;

select Vaccine_Id, Vaccine_Name, VaccineProvider_Name
from VaccineProvider 
where exists
(select Diseases_Name
from Diseases b
where b.Vaccine_ID = a.Vaccine_ID)

select Vaccine_Name, count(VaccineProvider_name)
from VaccineProvider
group by Vaccine_Name;

select  name_of_VC	
from  doctor		
order by name_of_vc desc;

select Batch_no, avg (No_of_vaccines)
from stock
group by Batch_no
having avg (No_of_vaccines) > 25;

select hospital.hospital_ID, room.Room_number, room.floor
from hospital
right join Room on  hospital.hospital_ID=room.hospital_id
order by hospital.hospital_ID;

select Vaccine_Id, Vaccine_Name, Diseases_name, VaccineProvider_Name
from VaccineProvider 
where exists
(select Diseases_Name
from Diseases 
where b.Vaccine_ID = a.Vaccine_ID);

select VaccineProvider_Name
from VaccineProvider
where Vaccine_Name = any(select Vaccine_Name from diseases where Disease_Name='polio' );

select VaccineProvider_Name
from VaccineProvider
where Vaccine_Name = all(select Vaccine_Name from diseases where Disease_Name='polio' );

select Vaccine_ID, Vaccine_Name, Manufacturing_Date and Expiry_Date
  from Vaccine
  where exists
  (select Vaccine_Count
  from Vaccine_Count
  where Vaccine.Vaccine_ID = Vaccine_Count.Vaccine_ID);
  
    select Vaccine_ID, Vaccine_Name and Disease_Name
  from Diseases
  where exists
  (select Manufacturing_Date
  from Vaccine
  where Vaccine.Vaccine_ID = Diseases.Vaccine_ID);
  
 
select Login_ID
from Administrator
where Patient_ID = Any(Select Patient_ID from Patient where Patient_name = "Yagna Patel");

select Disease_Name
from Diseases
where Vaccine_ID = Any(Select Vaccine_ID from Vaccine where Vaccine_name = "IPV");

select Login_ID
from Administrator
where Patient_ID = All(Select Patient_ID from Patient where Patient_name = "Yagna Patel");

select Queries
from Post_Vaccination
where Patient_ID = All(Select Patient_ID from Patient where Phone_Number = "7777999329");

select vaccine_count.vaccine_ID,  vaccine.expiry_date, vaccine.vaccine_name
from vaccine_count
full join vaccine_count on  vaccine_count.vaccine_ID=vaccine.vaccine_id
order by vaccine.vaccine_id;

select hospital.Patient_ID, Post_Vaccination.Patient_name, Post_Vaccination.queries
from hospital
full join Post_Vaccination on  hospital.Patient_ID=Post_vaccination.Patient_ID
order by hospital.Patient_ID;

select vaccine_name,  
 select (max(Vaccine_count))        
from vaccine_count              
where vaccine.vaccine_id =  vaccinationcount.vaccine_id      
as Max_VC
from vaccine;

   select Vaccine_ID, Vaccine_Name and Disease_Name
  from Diseases
  where exists
  (select Manufacturing_Date
  from Vaccine
  where Vaccine.Vaccine_ID = Diseases.Vaccine_ID)
  
  Select Count(no_of_vaccines)
  from stock;
  
select dayofmonth(Appointment_date)
from Appointment
where Appointment_Date = '2021-03-01';

Select UPPER(patient_name) 
as UppercasePatientName
from report;

select power(No_of_Vaccines,2)
from stock;

select Patient_name,    
(select max(Post_Vaccination_temp)               
from temperature               
where Patient.Patient_id = temperature.patient_id)      
as Max_Temp
from Patient;

SELECT COUNT(patient_id) , report_result
FROM report
GROUP BY report_result
HAVING COUNT(report_result='negative');

SELECT patient_id,patient_name
FROM report
ORDER BY patient_id,patient_name ASC;

select patient.patient_ID, report.report_result, report.disease_name
from patient
inner join Report on  patient.patient_ID=report.patient_id
order by patient.patient_ID;

select patient_Id, patient_Name, Disease_name, result_name
from report a
where exists
(select patient_Name
from patient b
where b.patient_ID = a.patient_ID)

select report_result
from report
where patient_Name = any(select patient_Name from patient where patient_Name='megha morakhia' )*/










 




