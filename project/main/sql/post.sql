CREATE TABLE post (
    post_id            INT NOT NULL AUTO_INCREMENT,
    create_at          TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    salutation         VARCHAR(500),
    created_by         INT NOT NULL,
    chapter_chapter_id INT NOT NULL,
    manga_manga_id     INT NOT NULL,
    rating_value       INT DEFAULT 0 CHECK (rating_value >= 0 AND rating_value <= 5),
    PRIMARY KEY (post_id),
    FOREIGN KEY (created_by)         REFERENCES users(user_id),
    FOREIGN KEY (chapter_chapter_id) REFERENCES chapter(chapter_id),
    FOREIGN KEY (manga_manga_id)     REFERENCES manga(manga_id)
);