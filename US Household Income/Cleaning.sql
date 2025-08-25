SELECT * FROM us_project.ushouseholdincome;
SELECT * FROM us_project.ushouseholdincome_statistics;

CREATE TABLE ushouseholdincome_statistics_backup AS
SELECT * FROM ushouseholdincome_statistics;


ALTER TABLE us_project.ushouseholdincome_statistics RENAME COLUMN `ï»¿id` TO `id`;

SELECT id, COUNT(id)
FROM ushouseholdincome
GROUP BY id
HAVING COUNT(id) > 1;

SELECT *
FROM (
	SELECT row_id, 
	id,
	ROW_NUMBER() OVER(PARTITION BY id ORDER BY id) as dup
	FROM ushouseholdincome
) duplicates
WHERE dup > 1;


DELETE FROM ushouseholdincome
WHERE row_id IN 
(SELECT row_id
FROM (
	SELECT row_id, 
	id,
	ROW_NUMBER() OVER(PARTITION BY id ORDER BY id) as dup
	FROM ushouseholdincome
) duplicates
WHERE dup > 1
);

SELECT id, COUNT(id)
FROM ushouseholdincome_statistics
GROUP BY id
HAVING COUNT(id) > 1;


SELECT State_Name, COUNT(State_Name)
FROM ushouseholdincome
GROUP BY State_Name;


UPDATE ushouseholdincome
SET State_Name = 'Georgia'
WHERE State_Name = 'Georia';

UPDATE ushouseholdincome
SET State_Name = 'Alabama'
WHERE State_Name = 'alabama';


UPDATE ushouseholdincome
SET Place = 'Autaugaville'
WHERE County = 'Autauga County'
AND City = 'Vinemont';


SELECT row_id, County, City 
FROM ushouseholdincome
WHERE County = 'Autauga County'
AND City = 'Vinemont';


SELECT Type, COUNT(Type)
FROM ushouseholdincome
GROUP BY(Type);


UPDATE ushouseholdincome
SET Type = 'Borough'
WHERE Type = 'Boroughs';