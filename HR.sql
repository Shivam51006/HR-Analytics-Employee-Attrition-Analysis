
-- 1. Overall Attrition Rate

SELECT
COUNT(*) AS Total_Employees,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left,
ROUND(
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 /
COUNT(*),
2
) AS Attrition_Rate
FROM employees;

-- =====================================================

-- 2. Department-wise Attrition

SELECT
Department,
COUNT(*) AS Employees_Left
FROM employees
WHERE Attrition = 'Yes'
GROUP BY Department
ORDER BY Employees_Left DESC;

-- =====================================================

-- 3. Job Role-wise Attrition

SELECT
JobRole,
COUNT(*) AS Employees_Left
FROM employees
WHERE Attrition = 'Yes'
GROUP BY JobRole
ORDER BY Employees_Left DESC;

-- =====================================================

-- 4. Overtime vs Attrition

SELECT
OverTime,
COUNT(*) AS Employees_Left
FROM employees
WHERE Attrition = 'Yes'
GROUP BY OverTime
ORDER BY Employees_Left DESC;

-- =====================================================

-- 5. Job Satisfaction vs Attrition

SELECT
JobSatisfaction_level,
COUNT(*) AS Employees_Left
FROM employees
WHERE Attrition = 'Yes'
GROUP BY JobSatisfaction_level
ORDER BY Employees_Left DESC;

-- =====================================================

-- 6. Work-Life Balance vs Attrition

SELECT
WorkLifeBalance_level,
COUNT(*) AS Employees_Left
FROM employees
WHERE Attrition = 'Yes'
GROUP BY WorkLifeBalance_level
ORDER BY Employees_Left DESC;

-- =====================================================

-- 7. Monthly Income vs Attrition

SELECT
Attrition,
ROUND(AVG(MonthlyIncome), 2) AS Avg_Monthly_Income
FROM employees
GROUP BY Attrition;

-- =====================================================

-- 8. Years Since Last Promotion vs Attrition

SELECT
YearsSinceLastPromotion,
COUNT(*) AS Employees_Left
FROM employees
WHERE Attrition = 'Yes'
GROUP BY YearsSinceLastPromotion
ORDER BY YearsSinceLastPromotion;

-- =====================================================

-- 9. Years With Current Manager vs Attrition

SELECT
YearsWithCurrManager,
COUNT(*) AS Employees_Left
FROM employees
WHERE Attrition = 'Yes'
GROUP BY YearsWithCurrManager
ORDER BY YearsWithCurrManager;

-- =====================================================

-- 10. Age Group vs Attrition

SELECT
Age_group,
COUNT(*) AS Employees_Left
FROM employees
WHERE Attrition = 'Yes'
GROUP BY Age_group
ORDER BY Employees_Left DESC;

