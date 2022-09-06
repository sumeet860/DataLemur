-- To find FB pages with zero likes

SELECT page_id from pages
WHERE page_id NOT IN (SELECT page_id FROM page_likes);
