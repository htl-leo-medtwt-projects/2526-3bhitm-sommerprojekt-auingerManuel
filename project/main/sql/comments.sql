CREATE TABLE comments (
    comment_id         INT NOT NULL AUTO_INCREMENT,
    content            VARCHAR(255),
    created_at         DATE,
    post_post_id       INT NOT NULL,
    user_user_id       INT NOT NULL,
    PRIMARY KEY (comment_id),
    FOREIGN KEY (post_post_id) REFERENCES post(post_id),
    FOREIGN KEY (user_user_id) REFERENCES users(user_id)
);