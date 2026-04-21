CREATE TABLE manga (
    manga_id           INT NOT NULL AUTO_INCREMENT,
    name               VARCHAR(30),
    published_at       DATE,
    mangaka_mangaka_id INT NOT NULL,
    PRIMARY KEY (manga_id),
    FOREIGN KEY (mangaka_mangaka_id) REFERENCES mangaka(mangaka_id)
);

INSERT INTO manga (name, published_at, mangaka_mangaka_id) VALUES ('One Piece', '1997-07-22', 1);
INSERT INTO manga (name, published_at, mangaka_mangaka_id) VALUES ('Naruto', '1999-09-21', 2);
INSERT INTO manga (name, published_at, mangaka_mangaka_id) VALUES ('Dragon Ball', '1984-11-20', 3);
INSERT INTO manga (name, published_at, mangaka_mangaka_id) VALUES ('Attack on Titan', '2009-09-09', 4);
INSERT INTO manga (name, published_at, mangaka_mangaka_id) VALUES ('Bleach', '2001-08-07', 5);
INSERT INTO manga (name, published_at, mangaka_mangaka_id) VALUES ('Hunter x Hunter', '1998-03-16', 6);
INSERT INTO manga (name, published_at, mangaka_mangaka_id) VALUES ('Berserk', '1989-08-25', 7);
INSERT INTO manga (name, published_at, mangaka_mangaka_id) VALUES ('Monster', '1994-12-05', 8);
INSERT INTO manga (name, published_at, mangaka_mangaka_id) VALUES ('Inuyasha', '1996-11-13', 9);
INSERT INTO manga (name, published_at, mangaka_mangaka_id) VALUES ('JoJo Bizarre Adventure', '1987-01-01', 10);
INSERT INTO manga (name, published_at, mangaka_mangaka_id) VALUES ('Fullmetal Alchemist', '2001-07-12', 3);
INSERT INTO manga (name, published_at, mangaka_mangaka_id) VALUES ('Death Note', '2003-12-01', 2);
INSERT INTO manga (name, published_at, mangaka_mangaka_id) VALUES ('Demon Slayer', '2016-02-15', 4);
INSERT INTO manga (name, published_at, mangaka_mangaka_id) VALUES ('Tokyo Ghoul', '2011-09-08', 5);
INSERT INTO manga (name, published_at, mangaka_mangaka_id) VALUES ('Sword Art Online', '2009-04-10', 6);
INSERT INTO manga (name, published_at, mangaka_mangaka_id) VALUES ('My Hero Academia', '2014-07-07', 7);
INSERT INTO manga (name, published_at, mangaka_mangaka_id) VALUES ('Vinland Saga', '2005-07-13', 8);
INSERT INTO manga (name, published_at, mangaka_mangaka_id) VALUES ('Vagabond', '1998-09-03', 9);
INSERT INTO manga (name, published_at, mangaka_mangaka_id) VALUES ('Slam Dunk', '1990-10-01', 10);
INSERT INTO manga (name, published_at, mangaka_mangaka_id) VALUES ('Yu Yu Hakusho', '1990-12-03', 6);