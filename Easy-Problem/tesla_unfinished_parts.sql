-- To find the parts which are not finished.

SELECT part FROM parts_assembly where finish_date is NULL
GROUP BY part;
