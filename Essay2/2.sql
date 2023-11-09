-- 2. Populate the dimension tables by inserting data from the related raw tables
-- Populasikan tabel dim_user table
INSERT INTO dim_user (user_id, username, email) 
SELECT user_id, user_name, country FROM raw_users;

-- Populasikan tabel dim_post
INSERT INTO dim_post (post_id, user_id, post_content) 
SELECT post_id, user_id, post_text FROM raw_posts;