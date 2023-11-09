-- Please create a fact_daily_posts table to capture the number of posts per user per day

CREATE TABLE fact_daily_posts (
    date_id DATE,
    user_id INT,
    num_posts INT,
    PRIMARY KEY (date_id, user_id),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (user_id) REFERENCES dim_user(user_id)
);