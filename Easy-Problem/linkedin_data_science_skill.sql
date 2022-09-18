-- To find the candidates who have all Python, Tableau, and Postgresql skills

SELECT candidate_id FROM candidates
WHERE skill IN ('Python','Tableau', 'Postgresql')
GROUP BY candidate_id
ORDER BY candidate_id
LIMIT 2;

-- More generic solution
SELECT candidate_id FROM candidates
WHERE skill IN ('Python','Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(skill) = 3
ORDER BY candidate_id;
