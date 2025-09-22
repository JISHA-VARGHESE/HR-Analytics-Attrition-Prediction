create database HR_analytics;
use HR_analytics;


CREATE TABLE Employee (
    Age INT,
    Attrition VARCHAR(10),
    BusinessTravel VARCHAR(50),
    DailyRate INT,
    Department VARCHAR(50),
    DistanceFromHome INT,
    Education INT,
    EducationField VARCHAR(50),
    EmployeeCount VARCHAR(50),
    EmployeeNumber INT PRIMARY KEY,
    EnvironmentSatisfaction INT,
    Gender VARCHAR(10),
    HourlyRate INT,
    JobInvolvement INT,
    JobLevel INT,
    JobRole VARCHAR(50),
    JobSatisfaction INT,
    MaritalStatus VARCHAR(20),
    MonthlyIncome INT,
    MonthlyRate INT,
    NumCompaniesWorked INT,
    Over18 VARCHAR(10),
    OverTime VARCHAR(5),
    PercentSalaryHike INT,
    PerformanceRating INT,
    RelationshipSatisfaction INT,
    StandardHours INT,
    StockOptionLevel INT,
    TotalWorkingYears INT,
    TrainingTimesLastYear INT,
    WorkLifeBalance INT,
    YearsAtCompany INT,
    YearsInCurrentRole INT,
    YearsSinceLastPromotion INT,
    YearsWithCurrManager INT
);
SHOW tables;
Describe Employee;
show create table Employee;
SELECT * FROM employee LIMIT 10;
select * from employee;
drop table hr_analytics;
drop table Employee;

#  Remove duplicates (Keeps only unique rows)
SELECT DISTINCT * 
FROM Employee;


# Run Queries - Purpose = find insights (like filters/pivots in Excel).
# --------- TOTAL EMPLOYEES ---------
select count(*) from employee;
# ----------DISPLAY FIRST 10 --------
select *from employee limit 10;
# ---------- ATTRITION COUNT----------
select attrition, count(*) from employee group by attrition;
#----------- ATTRITION ANALYSIS ----------
select department, attrition, count(*) As COUNT from employee group by department, attrition;
#------------Average Salary by Department------
DESCRIBE EMPLOYEE;
SELECT department, avg(monthlyIncome) as Average_Salary_Departmnet from employee group by department;
# -----------Average Years at Company----------
select department, avg(totalworkingyears) as Average_Years from employee group by department;
# ------------Overtime vs Attrition -----------
select *from employee limit 10;
select attrition, overtime, count(*) as  overtime_vs_attrition  from employee group by attrition,overtime;
select department,attrition,overtime, count(*) as count from employee group by department,attrition,overtime;
# ------------Performance Rating Distribution----------
SELECT PerformanceRating, COUNT(*) AS Count
FROM Employee
GROUP BY PerformanceRating
ORDER BY PerformanceRating DESC;
#--------------Relationship Satisfaction by Department-------
SELECT Department, AVG(RelationshipSatisfaction) AS AvgRelationshipSatisfaction
FROM Employee
GROUP BY Department;
#-------------Training Times vs Performance------------
SELECT TrainingTimesLastYear, AVG(PerformanceRating) AS AvgPerformance
FROM Employee
GROUP BY TrainingTimesLastYear
ORDER BY TrainingTimesLastYear;
#--------------Quick Pivot: Attrition by Gender ---------
SELECT Gender, Attrition, COUNT(*) AS Count
FROM Employee
GROUP BY Gender, Attrition;
select *from employee;