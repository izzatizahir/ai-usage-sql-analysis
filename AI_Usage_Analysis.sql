-- Query 1
SELECT COUNT(*) AS Total_Users
FROM ai_usage;

-- Query 2
SELECT
    ai_tool,
    COUNT(*) AS Users
FROM ai_usage
GROUP BY ai_tool
ORDER BY Users DESC;

-- Query 3
SELECT
    profession,
    ROUND(AVG(ai_usage_hours_p),2) AS Avg_Usage
FROM ai_usage
GROUP BY profession
ORDER BY Avg_Usage DESC;

-- Query 4
SELECT
    profession,
    ROUND(AVG(productivity_sco),2) AS Avg_Productivity
FROM ai_usage
GROUP BY profession
ORDER BY Avg_Productivity DESC;

-- Query 5
SELECT
    ROUND(AVG(time_saved_hours),2) AS Avg_Hours_Saved
FROM ai_usage;

-- Query 6
SELECT
    user_id,
    productivity_sco
FROM ai_usage
ORDER BY productivity_sco DESC
LIMIT 5;

-- Query 7
SELECT
    ai_tool,
    ROUND(AVG(productivity_sco),2) AS Avg_Productivity
FROM ai_usage
GROUP BY ai_tool
ORDER BY Avg_Productivity DESC;

-- Bonus Query
SELECT
CASE
    WHEN age < 30 THEN 'Under 30'
    WHEN age BETWEEN 30 AND 40 THEN '30-40'
    WHEN age BETWEEN 41 AND 50 THEN '41-50'
    ELSE '50+'
END AS Age_Group,
ROUND(AVG(ai_usage_hours_p),2) AS Avg_AI_Usage
FROM ai_usage
GROUP BY Age_Group
ORDER BY Avg_AI_Usage DESC;