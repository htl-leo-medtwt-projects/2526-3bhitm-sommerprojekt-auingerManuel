CREATE TABLE post (
    post_id            INT NOT NULL AUTO_INCREMENT,
    create_at          DATE,
    bloger             VARCHAR(30),
    chapter_chapter_id INT NOT NULL,
    PRIMARY KEY (post_id),
    FOREIGN KEY (chapter_chapter_id) REFERENCES chapter(chapter_id)
);