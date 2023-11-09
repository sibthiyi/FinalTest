-- 3. Create a fact table called fact_post_performance to store metrics like post views and likes over time
CREATE TABLE fact_post_performance (
    date_id DATE,
    post_id INT,
    views INT,
    likes INT,
    PRIMARY KEY (date_id, post_id),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (post_id) REFERENCES dim_post(post_id)
);