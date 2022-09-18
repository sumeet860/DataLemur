-- To find the candidates who have all Python, Tableau, and Postgresql skills

SELECT candidate_id FROM candidates
WHERE skill IN ('Python','Tableau', 'Postgresql')
GROUP BY candidate_id
ORDER BY candidate_id
LIMIT 2;
