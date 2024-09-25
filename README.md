# Payroll_Dashboard

## Overview
In the payroll dashboard project, SQL is utilized to clean and prepare payroll data by handling inconsistencies value, ensuring accurate calculations for salaries, leave, scheduled hours. The cleaning process involves data validation, standardizing formats, and organizing the payroll data for effective analysis.
Once the data is cleaned, Tableau is employed for visualization, transforming the cleaned data into interactive dashboards. These dashboards allow for the exploration of key metrics such as employee salary distributions, overtime payments, and overall payroll expenses. The goal of the project is to provide a comprehensive, easy-to-interpret view of the company’s payroll structure and emp[loyee dashboard, offering insights that help in financial planning, compliance monitoring, and payroll cost management and personal salary.

## Project Goals

Data Cleaning and Convertion by SQL:
* Convert datatype of dateWork, dateLeave, etc. into datetime.
* Validate leave period and work hours to generate the label for true datapoint.
* Calculation the salary table.

Tableau Dashboard:

Payroll Remediation - **[Tableau Report](https://public.tableau.com/app/profile/brian.ong1771/viz/PayrollRemediation/PAYROLLREMEDIATION?publish=yes)**

![Screenshot 2024-09-25 203041](https://github.com/user-attachments/assets/1490c9d8-9794-465c-adfc-f01c62b55d93)

* The "Payroll Remediation" dashboard provides a comprehensive view of employee salaries, comparing the actual versus scheduled salaries over time. It includes visual summaries such as total employees, overpayments, and underpayments, along with detailed salary metrics for different pay rate IDs. The timeline filters allow users to narrow down the data by specific time periods, and additional filters for Pay Rate ID and Employee ID help in focusing on specific salary categories or employees.
* The pie chart visualizes the salary distribution by different employee roles, while the bar chart below tracks the actual and scheduled salary trends over time, giving insight into discrepancies between what was paid and what was scheduled to be paid.
* Purpose: The dashboard was built to address and monitor payroll discrepancies within an organization. It aims to track overpayments and underpayments for employees and highlight remediation opportunities. By visualizing salary trends, it helps identify mismatches between actual and scheduled salaries and provides the necessary insights to rectify payroll errors, ensuring accurate compensation for all employees.
* This tool can be used by HR or payroll departments to streamline salary management, improve accuracy, and avoid payroll-related disputes, ultimately aiding financial transparency within the organization

Employee Dashboard - **[Tableau Report](https://public.tableau.com/app/profile/brian.ong1771/viz/EmpoyeeDashboard/EMPLOYEEDASHBOARD?publish=yes)**

![Screenshot 2024-09-25 201205](https://github.com/user-attachments/assets/8f852695-e079-412b-a11e-ddaff93c0151)


