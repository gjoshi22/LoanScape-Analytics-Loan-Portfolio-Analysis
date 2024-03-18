-- Total Loan Applications

SELECT COUNT(id) AS Total_Applications FROM financial_loan_data

-- Month to Date Loan Applications 
SELECT COUNT(id) AS MTD_Total_Loan_Applications FROM financial_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

-- Previous Month to Date Loan Applications
SELECT COUNT(id) AS Total_Applications FROM financial_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

-- Total Amount Received
SELECT SUM(loan_amount) AS Total_Funded_Amount FROM financial_loan_data

-- Month to Date Total Funded Amount
SELECT SUM(loan_amount) AS MTD_Total_Funded_Amount FROM financial_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

-- Previous Month to Date Total Funded Amount
SELECT SUM(loan_amount) AS PTMD_Total_Funded_Amount FROM financial_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

-- Total Amount Received
SELECT SUM(total_payment) AS Total_Amount_Collected FROM financial_loan_data

-- Month to Date Total Amount Received
SELECT SUM(total_payment) AS MTD_Total_Amount_Collected FROM financial_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

-- Previous Month to Date Total Amount Received
SELECT SUM(total_payment) AS PTMD_Total_Amount_Collected FROM financial_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

-- Average Interest Rate
SELECT AVG(int_rate)*100 AS Avg_Int_Rate FROM financial_loan_data

-- Month to Date Average Interest
SELECT AVG(int_rate)*100 AS MTD_Avg_Int_Rate FROM financial_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

-- Previous Month to Date Average Interest
SELECT AVG(int_rate)*100 AS PMTD_Avg_Int_Rate FROM financial_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021


-- Avg DTI
SELECT AVG(dti)*100 AS Avg_DTI FROM financial_loan_data

-- Month to Date Avg DTI
SELECT AVG(dti)*100 AS MTD_Avg_DTI FROM financial_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

-- Previous Month to Date Avg DTI
SELECT AVG(dti)*100 AS PMTD_Avg_DTI FROM financial_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

-- Good Loan Percentage
SELECT
(COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100.0) / COUNT(id) AS Good_Loan_Percentage
FROM financial_loan_data

-- Good Loan Applications
SELECT COUNT(id) AS Good_Loan_Applications FROM financial_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

-- Good Loan Funded Amount
SELECT SUM(loan_amount) AS Good_Loan_Funded_amount FROM financial_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

-- Good Loan Amount Received
SELECT SUM(total_payment) AS Good_Loan_amount_received FROM financial_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'


-- Bad Loan Percentage
SELECT
(COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100.0) / COUNT(id) AS Bad_Loan_Percentage
FROM financial_loan_data

-- Loan Applications
SELECT COUNT(id) AS Bad_Loan_Applications FROM financial_loan_data
WHERE loan_status = 'Charged Off'

-- Bad Loan Funded Amount
SELECT SUM(loan_amount) AS Bad_Loan_Funded_amount FROM financial_loan_data
WHERE loan_status = 'Charged Off'

-- Bad Loan Amount Received
SELECT SUM(total_payment) AS Bad_Loan_amount_received FROM financial_loan_data
WHERE loan_status = 'Charged Off'

--Loan Status by Grouped Loan Status
	SELECT
        loan_status,
        COUNT(id) AS LoanCount,
        SUM(total_payment) AS Total_Amount_Received,
        SUM(loan_amount) AS Total_Funded_Amount,
        AVG(int_rate * 100) AS Interest_Rate,
        AVG(dti * 100) AS DTI
    FROM
        financial_loan_data
    GROUP BY
        loan_status

--MTD and Previous MTD Loans by Loan Status 

SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM financial_loan_data
WHERE MONTH(issue_date) = 12 
GROUP BY loan_status


--BANK LOAN REPORT

-- MONTH
SELECT 
	MONTH(issue_date) AS Month_Munber, 
	DATENAME(MONTH, issue_date) AS Month_name, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan_data
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date)

--STATE
SELECT 
	address_state AS State, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan_data 
GROUP BY address_state
ORDER BY address_state

--TERM
SELECT 
	term AS Term, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan_data
GROUP BY term
ORDER BY term

-- EMPLOYEE LENGTH
SELECT 
	emp_length AS Employee_Length, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan_data
GROUP BY emp_length
ORDER BY emp_length

--PURPOSE
SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan_data
GROUP BY purpose
ORDER BY purpose


--HOME OWNERSHIP
SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan_data
GROUP BY home_ownership
ORDER BY home_ownership


SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan_data
WHERE grade = 'A'
GROUP BY purpose
ORDER BY purpose










