CREATE TABLE Users (
    user_id BIGINT PRIMARY KEY,
    username VARCHAR(50),
    age TINYINT,
    gender VARCHAR(50),
    race VARCHAR(50),
    religion VARCHAR(100),
    income_level VARCHAR(50),
    country VARCHAR(100),
    state VARCHAR(50),
    education_level VARCHAR(100)
);

CREATE TABLE Question (
    question_id BIGINT PRIMARY KEY,
    question_text VARCHAR(500),
    date_posted DATE,
    is_active BOOLEAN DEFAULT TRUE
);

CREATE TABLE Answer (
    answer_id BIGINT PRIMARY KEY,
    answer_text VARCHAR(100),
    question_id BIGINT,
    user_id BIGINT,
    time_submitted DATETIME,
)

-- CREATE FOREIGN KEYS