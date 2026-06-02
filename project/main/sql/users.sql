CREATE TABLE users (
    user_id            INT NOT NULL AUTO_INCREMENT,
    username           VARCHAR(50) NOT NULL,
    password           VARCHAR(255) NOT NULL,
    email              VARCHAR(60),
    created_at         DATE,
    country_country_id INT NOT NULL,
    imageName        VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY (user_id),
    UNIQUE KEY username_unique (username),
    FOREIGN KEY (country_country_id) REFERENCES country(country_id)
);