SELECT 
    MAX(CASE WHEN occupation = 'Doctor' THEN name else NULL END) AS Doctor,
    MAX(CASE WHEN occupation = 'Professor' THEN name else NULL END) AS Professor,
    MAX(CASE WHEN occupation = 'Singer' THEN name else NULL END) AS Singer,
    MAX(CASE WHEN occupation = 'Actor' THEN name else NULL END) AS Actor
FROM (
    SELECT *, ROW_NUMBER() OVER (PARTITION BY occupation ORDER BY name) AS occ_groups
    FROM OCCUPATIONS
) AS occ
group by occ_groups ORDER BY occ_groups;