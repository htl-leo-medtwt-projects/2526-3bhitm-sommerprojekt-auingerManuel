CREATE TABLE chapter (
    chapter_id     INT NOT NULL,
    name           VARCHAR(100),
    published_at   DATE,
    manga_manga_id INT NOT NULL,
    PRIMARY KEY (chapter_id),
    FOREIGN KEY (manga_manga_id) REFERENCES manga(manga_id)
);