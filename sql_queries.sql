-- Create Database
CREATE DATABASE loan_project
USE loan_project

-- Create Table
CREATE TABLE loan_data
(
Loan_ID VARCHAR(20),
Gender VARCHAR(10),
Married VARCHAR(10),
Dependents INT,
Education VARCHAR(20),
Self_Employed VARCHAR(10),
ApplicantIncome INT,
CoapplicantIncome INT,
LoanAmount INT,
Loan_Amount_Term INT,
Credit_History INT,
Property_Area VARCHAR(20),
Loan_Status VARCHAR(5)
);

-- View Data
select * from loan_Data ;

-- Loan Approval Status
SELECT Loan_Status, COUNT(*) 
FROM loan_data
GROUP BY Loan_Status;

-- Credit History vs Loan Status
SELECT credit_history, loan_status, COUNT(*) 
FROM loan_data 
GROUP BY credit_history, loan_status;

-- Average Income by Loan Status
SELECT loan_status, 
ROUND(AVG(ApplicantIncome + CoapplicantIncome),2) AS Total_income 
FROM loan_data 
GROUP BY loan_status;

-- Loan Status by Property Area
SELECT property_area, loan_status, COUNT(*) 
FROM loan_data 
GROUP BY property_area, loan_status;


