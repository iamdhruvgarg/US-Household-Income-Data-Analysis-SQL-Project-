SELECT * FROM us_project.ushouseholdincome;
SELECT * FROM us_project.ushouseholdincome_statistics;


-- TOP 10 states by land

SELECT State_Name, SUM(ALand), SUM(AWater)
FROM ushouseholdincome
GROUP BY State_Name
ORDER BY SUM(ALand) DESC
LIMIT 10;

-- CAN CHECK THIS ALSO FOR MISSINF RECORDS UDURING THE IMPORT
SELECT * 
FROM us_project.ushouseholdincome u
RIGHT JOIN us_project.ushouseholdincome_statistics us
ON u.id = us.id
WHERE u.id IS NULL;

SELECT * 
FROM us_project.ushouseholdincome u
JOIN us_project.ushouseholdincome_statistics us
ON u.id = us.id;


SELECT * 
FROM us_project.ushouseholdincome u
JOIN us_project.ushouseholdincome_statistics us
ON u.id = us.id
WHERE Mean <> 0;

SELECT u.State_Name,  County, Type, `Primary`, Mean, Median
FROM us_project.ushouseholdincome u
JOIN us_project.ushouseholdincome_statistics us
ON u.id = us.id
WHERE Mean <> 0;

SELECT u.State_Name, ROUND(AVG(Mean), 1), ROUND(AVG(Median), 1)
FROM us_project.ushouseholdincome u
JOIN us_project.ushouseholdincome_statistics us
ON u.id = us.id
WHERE Mean <> 0
GROUP BY u.State_Name
ORDER BY 3 DESC
LIMIT 10;


SELECT Type, COUNT(Type), ROUND(AVG(Mean), 1), ROUND(AVG(Median), 1)
FROM us_project.ushouseholdincome u
JOIN us_project.ushouseholdincome_statistics us
ON u.id = us.id
WHERE Mean <> 0
GROUP BY Type
ORDER BY 4 DESC
LIMIT 20;

SELECT u.State_Name, City, ROUND(AVG(Mean), 1), ROUND(AVG(Median), 1)
FROM us_project.ushouseholdincome u
JOIN us_project.ushouseholdincome_statistics us
ON u.id = us.id
WHERE Mean <> 0
GROUP BY u.State_Name, City
ORDER BY 3 DESC
LIMIT 10;

