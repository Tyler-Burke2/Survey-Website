CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE NOT NULL,
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
    question_id INT PRIMARY KEY AUTO_INCREMENT,
    question_text VARCHAR(500) NOT NULL,
    date_posted DATE NOT NULL,
    is_active BOOLEAN DEFAULT TRUE
);

CREATE TABLE Answer (
    answer_id INT PRIMARY KEY AUTO_INCREMENT,
    answer_text VARCHAR(100) NOT NULL,
    question_id INT NOT NULL,
    user_id INT NOT NULL,
    time_submitted DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY(question_id) REFERENCES Question(question_id),
    FOREIGN KEY(user_id) REFERENCES Users(user_id)
);

-- CREATE FOREIGN KEYS