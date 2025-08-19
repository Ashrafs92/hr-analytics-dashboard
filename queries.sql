-- Attrition rate
SELECT 
  (SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)*100.0)/COUNT(*) AS AttritionRate
FROM hr_data;

-- Department-wise attrition
SELECT Dept,
       COUNT(*) AS Total,
       SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS AttritionCount
FROM hr_data
GROUP BY Dept;
