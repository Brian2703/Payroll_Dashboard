-- Use payslip;
SELECT * FROM EMPLOYEES;
SELECT * FROM PAY_RATE;
SELECT * FROM PROJECT_DETAIL;
SELECT * FROM TIME_SHEET ;
SELECT * FROM WORK_SCHEDULE ;
SELECT * FROM LEAVES ;

#Calc the salary table each year
SELECT e.EmployeeID,sum(TimeSheetTransactionHours) AS Annual_TimeSheet_hours,
sum(TimeSheetTransactionHours*p.PayRateStandard) AS Annual_TimeSheet_Salary,
p.PayRateStandard,
sum(t.WorkHours) AS Work_hours, 
sum(t.WorkHours*p.PayRateStandard) AS Annual_Work_salary 
FROM employees e 
JOIN pay_rate p ON e.EmployeePayRate = p.PayRateID
JOIN time_sheet t ON e.EmployeeID= t.EmployeeWork
GROUP BY e.EmployeeID,p.PayRateStandard;

-- Convert data
SELECT DATE_ADD('1899-12-30', INTERVAL DateWork DAY) AS DateWork
FROM TIME_SHEET;

WITH Join_table AS
(
SELECT l.EmployeeLeave, l.StartDateLeave, l.EndDateLeave,
DATE_ADD('1899-12-30', INTERVAL DateWork DAY) AS date_work,
t.WorkHours, t.TimeSheetTransactionID
FROM TIME_SHEET t JOIN LEAVES l ON t.EmployeeWork=l.EmployeeLeave),

CHECK_TABLE AS(
SELECT * ,
IF (date_work>= startDateLeave AND date_work <=EndDateLeave, 'TRUE','FALSE') AS CHECK_DATA
FROM Join_table
)
SELECT * FROM CHECK_TABLE WHERE CHECK_DATA='FALSE'
