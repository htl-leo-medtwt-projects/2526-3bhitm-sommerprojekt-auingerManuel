CREATE TABLE favmangas (
    manga_manga_id INT NOT NULL,
    user_user_id   INT NOT NULL,
    PRIMARY KEY (manga_manga_id, user_user_id),
    FOREIGN KEY (manga_manga_id) REFERENCES manga(manga_id),
    FOREIGN KEY (user_user_id)   REFERENCES users(user_id)
);