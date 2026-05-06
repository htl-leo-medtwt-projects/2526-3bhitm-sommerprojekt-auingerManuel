CREATE TABLE post_rating (
    rating_id          INT NOT NULL AUTO_INCREMENT,
    created_by         INT NOT NULL,
    post_id            INT NOT NULL,
    rating_value       INT NOT NULL CHECK (rating_value >= 1 AND rating_value <= 5),
    created_at         TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at         TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (rating_id),
    UNIQUE KEY (created_by, post_id),
    FOREIGN KEY (created_by)         REFERENCES users(user_id),
    FOREIGN KEY (post_id)            REFERENCES post(post_id)
);
