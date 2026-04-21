CREATE TABLE users (
    user_id            INT NOT NULL AUTO_INCREMENT,
    firstname          VARCHAR(30),
    lastname           VARCHAR(30),
    email              VARCHAR(20),
    created_at         DATE,
    country_country_id INT NOT NULL,
    PRIMARY KEY (user_id),
    FOREIGN KEY (country_country_id) REFERENCES country(country_id)
);