-- Populate the fact table by joining and aggregating data from the raw tables

INSERT INTO fact_post_performance (post_id, date_id, views, likes)
SELECT p.post_id, d.date_id, COUNT(DISTINCT l.user_id) AS views, COUNT(l.like_id) AS likes
FROM raw_posts p
JOIN dim_date d ON p.post_date = d.date_id
LEFT JOIN raw_likes l ON p.post_id = l.post_id AND p.post_date = l.like_date 
GROUP BY p.post_id, d.date_id;