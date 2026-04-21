CREATE TABLE mangaka (
    mangaka_id INT NOT NULL AUTO_INCREMENT,
    name       VARCHAR(30),
    birthday   DATE,
    biographie VARCHAR(30),
    PRIMARY KEY (mangaka_id)
);

INSERT INTO mangaka (name, birthday, biographie) VALUES ('Eiichiro Oda', '1975-01-01', 'Autor von One Piece');
INSERT INTO mangaka (name, birthday, biographie) VALUES ('Masashi Kishimoto', '1974-11-08', 'Autor von Naruto');
INSERT INTO mangaka (name, birthday, biographie) VALUES ('Akira Toriyama', '1955-04-05', 'Autor von Dragon Ball');
INSERT INTO mangaka (name, birthday, biographie) VALUES ('Hajime Isayama', '1986-08-29', 'Autor von AoT');
INSERT INTO mangaka (name, birthday, biographie) VALUES ('Tite Kubo', '1977-06-26', 'Autor von Bleach');
INSERT INTO mangaka (name, birthday, biographie) VALUES ('Yoshihiro Togashi', '1966-04-27', 'Autor von HxH');
INSERT INTO mangaka (name, birthday, biographie) VALUES ('Kentaro Miura', '1966-07-11', 'Autor von Berserk');
INSERT INTO mangaka (name, birthday, biographie) VALUES ('Naoki Urasawa', '1960-01-02', 'Autor von Monster');
INSERT INTO mangaka (name, birthday, biographie) VALUES ('Rumiko Takahashi', '1957-10-10', 'Autorin von Inuyasha');
INSERT INTO mangaka (name, birthday, biographie) VALUES ('Hirohiko Araki', '1960-06-07', 'Autor von JoJo');