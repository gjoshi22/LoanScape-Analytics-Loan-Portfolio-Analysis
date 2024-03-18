# Bank Loan Report: Comprehensive Documentation for Data Analysts

## Dashboard Link: [Financial Loan Analysis](https://app.powerbi.com/view?r=eyJrIjoiOTQ1YjllODUtMDhlMC00MmEzLThlYTItODMyMGFkM2Y0NTYxIiwidCI6IjY4ZjM4MWUzLTQ2ZGEtNDdiOS1iYTU3LTZmMzIyYjhmMGRhMSIsImMiOjN9&pageName=ReportSection)
## Overview

This comprehensive guide is crafted for data analysts within the banking sector, focusing especially on those dealing with loan data. The documentation aims to provide an in-depth understanding of terminologies, data fields, SQL queries, and analytical frameworks essential for analyzing and interpreting bank loan data effectively. By the conclusion of this document, analysts will be equipped to extract actionable insights from loan data, significantly contributing to their bank's decision-making processes and risk management strategies.

## Terminologies and Data Fields

A clear grasp of specific terminologies and data fields is fundamental for effective data analysis. Here's a detailed explanation of each field commonly encountered in bank loan datasets:

- **Loan ID**: A unique identifier for each loan, facilitating the tracking and management of individual loans throughout their lifecycle.
- **Address State**: Denotes the borrower's state of residence, used for assessing regional risk factors and ensuring state regulation compliance.
- **Employee Length**: Indicates the duration the borrower has been with their current employer, offering insights into employment stability.
- **Employee Title**: The borrower's job position, aiding in income source verification and financial capacity assessment.
- **Grade & Sub Grade**: Assigned based on the borrower's creditworthiness, affecting loan terms and interest rates.
- **Home Ownership**: Shows whether the borrower owns a home, impacting loan security and likelihood of repayment.
- **Issue Date**: The issuance date of the loan, crucial for tracking and interest calculations.
- **Last Credit Pull Date**: The most recent check date of the borrower's credit, vital for creditworthiness monitoring.
- **Last Payment Date & Next Payment Date**: Marks the last payment received and estimates the next one, crucial for payment behavior tracking and cash flow planning.
- **Loan Status**: Reflects the current state of the loan, essential for risk management and financial provisioning.
- **Purpose**: The loan's reason, aiding in understanding borrower intentions and product alignment.
- **Term**: Duration of the loan in months, influencing repayment schedules and interest calculations.
- **Verification Status**: The status of the borrower's financial information verification, key for data accuracy and loan credibility assessment.
- **Annual Income, DTI (Debt-to-Income Ratio), and Installment**: Fields evaluating the borrower's repayment capacity and shaping loan repayment terms.
- **Interest Rate**: The borrowing cost, crucial for loan pricing and profitability analysis.
- **Loan Amount**: The principal amount borrowed.

## SQL Queries for Data Analysis

### Descriptions

#### A. Loan Report | Summary:

- **Total Loan Applications**: Counts all loan applications in the database, providing a total view of lending activity.
- **Month To Date Total Applications**: The count of loan applications for the current month, aiding in monthly trend analysis.
- **Previous Month to Date Applications**: The count of loan applications from the same period in the previous month, enabling comparative analysis.
- **Total Funded Amount**: The total amount loaned to all borrowers, reflecting the bank's lending volume.
- **Month to Date Total Funded Amount**: The total amount of loans disbursed in the current month, tracking monthly lending activity.
- **Previous Month to Date Total Funded Amount**: The total loan amount funded during the same period in the previous month, facilitating month-over-month performance comparison.
- **Total Amount Received**: The total repayment amount from borrowers, showing the bank's cash inflow from repayments.
- **Month to Date Total Amount Received**: The total repayment amount in the current month, monitoring recent cash inflows.
- **Previous Month to Date Total Amount Received**: The repayment amount during the corresponding period of the previous month, for comparative analysis.
- **Average Interest Rate**: The average interest rate across all loans, reflecting general borrowing cost.
- **Month to Date Average Interest**: The average interest rate for loans issued in the current month, showing potential shifts in pricing strategy.
- **Previous Month to Date Average Interest**: The average interest rate of loans from the previous month's same timeframe, for month-over-month comparison.
- **Avg DTI (Debt-to-Income Ratio)**: The average debt-to-income ratio among all borrowers, assessing overall creditworthiness and financial health.

#### Good Loan Issued:

- **Good Loan Percentage**: Percentage of 'Good' loans (either 'Fully Paid' or 'Current') in the portfolio.
- **Good Loan Applications**: Count of applications resulting in 'Good' loans, tracking successful lending activities.
- **Good Loan Funded Amount**: Total amount funded to 'Good' loans, showing effective fund allocation to lower-risk borrowers.
- **Good Loan Amount Received**: Total amount repaid from 'Good' loans, indicating return from low-risk lending.

#### Bad Loan Issued:

- **Bad Loan Percentage**: Percentage of 'Bad' loans ('Charged Off'), highlighting non-performing loans.
- **Bad Loan Applications**: Count of applications that resulted in 'Bad' loans, identifying the extent of unsuccessful lending.
- **Bad Loan Funded Amount**: Total amount allocated to 'Bad' loans, showing the impact of high-risk lending.
- **Bad Loan Amount Received**: Total repayments from 'Bad' loans, indicating effectiveness of recovery efforts.

#### Loan Status:

- **Loan Status by Grouped Loan Status**: Breakdown of loans by current status, offering detailed risk and performance insights.
- **MTD and Previous MTD Loans by Loan Status**: Month-to-date comparison of total funded amount and total amount received, categorized by loan status, for portfolio health assessment.

### Bank Loan Report | Overview:

- **MONTH**: Analysis of loan data by month of issue, providing monthly lending trends and borrower repayment behavior insights.
- **STATE**: Summary of loan data by borrower's state, identifying geographic lending patterns and performance.
- **TERM**: Overview of loans by their terms, offering insights into varying loan durations' impacts.
- **EMPLOYEE LENGTH**: Distribution of loans by borrower's employment duration, assessing employment stability's effect on loan viability.
- **PURPOSE**: Categorization of loans by stated purpose, revealing borrower intentions and preferences.
