-- 1. Create dimension tables dim_user , dim_post , and dim_date to store normalized data from the raw tables
-- Buat tabel dim_user
CREATE TABLE dim_user (
    user_id INT PRIMARY KEY,
    username VARCHAR(255),
    email VARCHAR(255)
    -- other user attributes
);

-- Buat tabel dim_post 
CREATE TABLE dim_post (
    post_id INT PRIMARY KEY,
    user_id INT,
    post_content TEXT
    -- other post attributes
);

-- Buat tabel dim_date 
CREATE TABLE dim_date (
    date_id DATE PRIMARY KEY,
    day INT,
    month INT,
    year INT
);
