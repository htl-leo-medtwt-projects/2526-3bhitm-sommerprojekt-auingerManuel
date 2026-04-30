SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE chapter;
SET FOREIGN_KEY_CHECKS = 1;


-- One Piece (manga_id 1)
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (1, 'Kapitel 1 - Romance Dawn', '1997-07-22', 1);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (2, 'Kapitel 2 - Der Ruderermann', '1997-07-29', 1);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (3, 'Kapitel 3 - Zoro der Piratenjäger', '1997-08-05', 1);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (4, 'Kapitel 4 - Der Schatz des Kapitän Morgan', '1997-08-12', 1);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (5, 'Kapitel 5 - Der Fluch des Teufelsfruchts', '1997-08-19', 1);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (6, 'Kapitel 6 - Der geheimnisvolle Mann', '1997-08-26', 1);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (7, 'Kapitel 7 - Nami', '1997-09-02', 1);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (8, 'Kapitel 8 - Fight', '1997-09-09', 1);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (9, 'Kapitel 9 - Arlong der Fischmensch', '1997-09-16', 1);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (10, 'Kapitel 10 - Der Ozean', '1997-09-23', 1);

-- Naruto (manga_id 2)
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (11, 'Kapitel 1 - Uzumaki Naruto', '1999-09-21', 2);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (12, 'Kapitel 2 - Konohamaru', '1999-09-28', 2);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (13, 'Kapitel 3 - Sasuke Uchiha', '1999-10-05', 2);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (14, 'Kapitel 4 - Kakashi Hatake', '1999-10-12', 2);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (15, 'Kapitel 5 - Die Prüfung beginnt', '1999-10-19', 2);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (16, 'Kapitel 6 - Sakura', '1999-10-26', 2);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (17, 'Kapitel 7 - Die erste Mission', '1999-11-02', 2);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (18, 'Kapitel 8 - Zabuza', '1999-11-09', 2);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (19, 'Kapitel 9 - Haku', '1999-11-16', 2);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (20, 'Kapitel 10 - Der Nebel', '1999-11-23', 2);

-- Dragon Ball (manga_id 3)
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (21, 'Kapitel 1 - Bulma und Son Goku', '1984-11-20', 3);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (22, 'Kapitel 2 - Die Drachenkugeln', '1984-11-27', 3);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (23, 'Kapitel 3 - Der Grossvater', '1984-12-04', 3);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (24, 'Kapitel 4 - Oolong', '1984-12-11', 3);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (25, 'Kapitel 5 - Yamcha', '1984-12-18', 3);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (26, 'Kapitel 6 - Die Wüste', '1984-12-25', 3);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (27, 'Kapitel 7 - Pilaf', '1985-01-08', 3);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (28, 'Kapitel 8 - Der Wunsch', '1985-01-15', 3);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (29, 'Kapitel 9 - Das Turnier', '1985-01-22', 3);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (30, 'Kapitel 10 - Krillin', '1985-01-29', 3);

-- Attack on Titan (manga_id 4)
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (31, 'Kapitel 1 - An diesem Tag', '2009-09-09', 4);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (32, 'Kapitel 2 - Der Tag des Falls', '2009-10-09', 4);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (33, 'Kapitel 3 - Zur Waffe werden', '2009-11-09', 4);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (34, 'Kapitel 4 - Die Nacht des Abschieds', '2009-12-09', 4);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (35, 'Kapitel 5 - Der erste Kampf', '2010-01-09', 4);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (36, 'Kapitel 6 - Der kleine Soldat', '2010-02-09', 4);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (37, 'Kapitel 7 - Kleines Mädchen', '2010-03-09', 4);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (38, 'Kapitel 8 - Roar of Awakening', '2010-04-09', 4);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (39, 'Kapitel 9 - Der Titane', '2010-05-09', 4);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (40, 'Kapitel 10 - Titan vs Titan', '2010-06-09', 4);

-- Bleach (manga_id 5)
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (41, 'Kapitel 1 - Death und Strawberry', '2001-08-07', 5);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (42, 'Kapitel 2 - Starter', '2001-08-14', 5);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (43, 'Kapitel 3 - Gefangen in der Menschenwelt', '2001-08-21', 5);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (44, 'Kapitel 4 - Cursed', '2001-08-28', 5);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (45, 'Kapitel 5 - Rightarm of the Giant', '2001-09-04', 5);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (46, 'Kapitel 6 - Elimination', '2001-09-11', 5);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (47, 'Kapitel 7 - Die Quincy', '2001-09-18', 5);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (48, 'Kapitel 8 - Uryu Ishida', '2001-09-25', 5);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (49, 'Kapitel 9 - Die Hollows', '2001-10-02', 5);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (50, 'Kapitel 10 - Orihime', '2001-10-09', 5);

-- Hunter x Hunter (manga_id 6)
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (51, 'Kapitel 1 - Abfahrt', '1998-03-16', 6);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (52, 'Kapitel 2 - Pruefung beginnt', '1998-03-23', 6);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (53, 'Kapitel 3 - Das Ziel', '1998-03-30', 6);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (54, 'Kapitel 4 - Gon und Killua', '1998-04-06', 6);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (55, 'Kapitel 5 - Kurapika', '1998-04-13', 6);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (56, 'Kapitel 6 - Leorio', '1998-04-20', 6);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (57, 'Kapitel 7 - Die Spinne', '1998-04-27', 6);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (58, 'Kapitel 8 - Hisoka', '1998-05-04', 6);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (59, 'Kapitel 9 - Nen', '1998-05-11', 6);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (60, 'Kapitel 10 - Die Pruefung endet', '1998-05-18', 6);

-- Berserk (manga_id 7)
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (61, 'Kapitel 1 - Der schwarze Schwertkämpfer', '1989-08-25', 7);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (62, 'Kapitel 2 - Der Schlächter', '1989-09-25', 7);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (63, 'Kapitel 3 - Die Brandmarkung', '1989-10-25', 7);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (64, 'Kapitel 4 - Griffith', '1989-11-25', 7);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (65, 'Kapitel 5 - Die Falken', '1989-12-25', 7);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (66, 'Kapitel 6 - Casca', '1990-01-25', 7);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (67, 'Kapitel 7 - Der Traum', '1990-02-25', 7);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (68, 'Kapitel 8 - Die Finsternis', '1990-03-25', 7);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (69, 'Kapitel 9 - Das Opfer', '1990-04-25', 7);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (70, 'Kapitel 10 - Die Gotthand', '1990-05-25', 7);

-- Monster (manga_id 8)
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (71, 'Kapitel 1 - Herr Dr. Tenma', '1994-12-05', 8);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (72, 'Kapitel 2 - Nur ein Leben', '1994-12-12', 8);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (73, 'Kapitel 3 - Perfekter Selbstmord', '1994-12-19', 8);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (74, 'Kapitel 4 - Johan', '1994-12-26', 8);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (75, 'Kapitel 5 - Die Spur', '1995-01-09', 8);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (76, 'Kapitel 6 - Nina', '1995-01-16', 8);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (77, 'Kapitel 7 - Die Vergangenheit', '1995-01-23', 8);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (78, 'Kapitel 8 - Das Monster', '1995-01-30', 8);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (79, 'Kapitel 9 - Lunge', '1995-02-06', 8);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (80, 'Kapitel 10 - Die Wahrheit', '1995-02-13', 8);

-- Inuyasha (manga_id 9)
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (81, 'Kapitel 1 - Die Heldin', '1996-11-13', 9);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (82, 'Kapitel 2 - Kagomes Wunsch', '1996-11-20', 9);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (83, 'Kapitel 3 - Inuyasha erwacht', '1996-11-27', 9);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (84, 'Kapitel 4 - Die Juwelenscherbe', '1996-12-04', 9);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (85, 'Kapitel 5 - Kaede', '1996-12-11', 9);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (86, 'Kapitel 6 - Kikyo', '1996-12-18', 9);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (87, 'Kapitel 7 - Die Dämonen', '1996-12-25', 9);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (88, 'Kapitel 8 - Miroku', '1997-01-08', 9);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (89, 'Kapitel 9 - Sango', '1997-01-15', 9);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (90, 'Kapitel 10 - Naraku', '1997-01-22', 9);

-- JoJo Bizarre Adventure (manga_id 10)
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (91, 'Kapitel 1 - Jonathan Joestar', '1987-01-01', 10);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (92, 'Kapitel 2 - Dio Brando', '1987-01-08', 10);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (93, 'Kapitel 3 - Der Stein der Weisen', '1987-01-15', 10);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (94, 'Kapitel 4 - Der Hamon', '1987-01-22', 10);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (95, 'Kapitel 5 - Zeppeli', '1987-01-29', 10);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (96, 'Kapitel 6 - Die Maske', '1987-02-05', 10);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (97, 'Kapitel 7 - Der Vampir', '1987-02-12', 10);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (98, 'Kapitel 8 - Das Finale', '1987-02-19', 10);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (99, 'Kapitel 9 - Joseph Joestar', '1987-02-26', 10);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (100, 'Kapitel 10 - Die Pillar Men', '1987-03-05', 10);

-- Fullmetal Alchemist (manga_id 11)
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (101, 'Kapitel 1 - Die Alchemisten', '2001-07-12', 11);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (102, 'Kapitel 2 - Der Preis der Alchemie', '2001-08-12', 11);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (103, 'Kapitel 3 - Der Stein der Weisen', '2001-09-12', 11);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (104, 'Kapitel 4 - Edward und Alphonse', '2001-10-12', 11);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (105, 'Kapitel 5 - Winry', '2001-11-12', 11);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (106, 'Kapitel 6 - Roy Mustang', '2001-12-12', 11);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (107, 'Kapitel 7 - Die Homunculi', '2002-01-12', 11);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (108, 'Kapitel 8 - Lust', '2002-02-12', 11);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (109, 'Kapitel 9 - Gluttony', '2002-03-12', 11);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (110, 'Kapitel 10 - Der Vater', '2002-04-12', 11);

-- Death Note (manga_id 12)
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (111, 'Kapitel 1 - Boring', '2003-12-01', 12);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (112, 'Kapitel 2 - L', '2003-12-08', 12);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (113, 'Kapitel 3 - Ziel', '2003-12-15', 12);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (114, 'Kapitel 4 - Pursuit', '2003-12-22', 12);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (115, 'Kapitel 5 - Misora', '2003-12-29', 12);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (116, 'Kapitel 6 - Aktion', '2004-01-05', 12);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (117, 'Kapitel 7 - Misa Misa', '2004-01-12', 12);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (118, 'Kapitel 8 - Zweites Shinigami', '2004-01-19', 12);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (119, 'Kapitel 9 - Falle', '2004-01-26', 12);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (120, 'Kapitel 10 - Verhör', '2004-02-02', 12);

-- Demon Slayer (manga_id 13)
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (121, 'Kapitel 1 - Grausamkeit', '2016-02-15', 13);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (122, 'Kapitel 2 - Jemand anderes Blut', '2016-02-22', 13);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (123, 'Kapitel 3 - Sabito und Makomo', '2016-02-29', 13);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (124, 'Kapitel 4 - Endauswahl', '2016-03-07', 13);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (125, 'Kapitel 5 - Zenitsu', '2016-03-14', 13);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (126, 'Kapitel 6 - Inosuke', '2016-03-21', 13);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (127, 'Kapitel 7 - Das Schwert', '2016-03-28', 13);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (128, 'Kapitel 8 - Muzan', '2016-04-04', 13);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (129, 'Kapitel 9 - Die Hashira', '2016-04-11', 13);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (130, 'Kapitel 10 - Das Haus der Spinnen', '2016-04-18', 13);

-- Tokyo Ghoul (manga_id 14)
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (131, 'Kapitel 1 - Ghoul', '2011-09-08', 14);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (132, 'Kapitel 2 - Abnormal', '2011-09-15', 14);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (133, 'Kapitel 3 - Hunger', '2011-09-22', 14);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (134, 'Kapitel 4 - Touka', '2011-09-29', 14);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (135, 'Kapitel 5 - Anteiku', '2011-10-06', 14);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (136, 'Kapitel 6 - Maske', '2011-10-13', 14);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (137, 'Kapitel 7 - Ermittler', '2011-10-20', 14);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (138, 'Kapitel 8 - Amon', '2011-10-27', 14);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (139, 'Kapitel 9 - Jason', '2011-11-03', 14);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (140, 'Kapitel 10 - Aogiri', '2011-11-10', 14);

-- Sword Art Online (manga_id 15)
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (141, 'Kapitel 1 - Der Beginn', '2009-04-10', 15);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (142, 'Kapitel 2 - Beater', '2009-04-17', 15);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (143, 'Kapitel 3 - Rote Nasenspitze', '2009-04-24', 15);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (144, 'Kapitel 4 - Der schwarze Schwertkämpfer', '2009-05-01', 15);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (145, 'Kapitel 5 - Asuna', '2009-05-08', 15);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (146, 'Kapitel 6 - Das Labyrinth', '2009-05-15', 15);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (147, 'Kapitel 7 - Der Boss', '2009-05-22', 15);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (148, 'Kapitel 8 - Die Gilde', '2009-05-29', 15);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (149, 'Kapitel 9 - Heathcliff', '2009-06-05', 15);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (150, 'Kapitel 10 - Das Ende', '2009-06-12', 15);

-- My Hero Academia (manga_id 16)
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (151, 'Kapitel 1 - Izuku Midoriya', '2014-07-07', 16);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (152, 'Kapitel 2 - Mein Held', '2014-07-14', 16);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (153, 'Kapitel 3 - Die Pruefung', '2014-07-21', 16);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (154, 'Kapitel 4 - All Might', '2014-07-28', 16);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (155, 'Kapitel 5 - One For All', '2014-08-04', 16);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (156, 'Kapitel 6 - Die UA Schule', '2014-08-11', 16);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (157, 'Kapitel 7 - Bakugo', '2014-08-18', 16);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (158, 'Kapitel 8 - Der Villain', '2014-08-25', 16);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (159, 'Kapitel 9 - Todoroki', '2014-09-01', 16);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (160, 'Kapitel 10 - Das Sportfest', '2014-09-08', 16);

-- Vinland Saga (manga_id 17)
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (161, 'Kapitel 1 - Dänen', '2005-07-13', 17);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (162, 'Kapitel 2 - Askeladd', '2005-07-20', 17);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (163, 'Kapitel 3 - Thorfinn', '2005-07-27', 17);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (164, 'Kapitel 4 - Der Krieg', '2005-08-03', 17);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (165, 'Kapitel 5 - Thors', '2005-08-10', 17);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (166, 'Kapitel 6 - Die Rache', '2005-08-17', 17);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (167, 'Kapitel 7 - England', '2005-08-24', 17);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (168, 'Kapitel 8 - Prinz Canute', '2005-08-31', 17);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (169, 'Kapitel 9 - Die Schlacht', '2005-09-07', 17);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (170, 'Kapitel 10 - Frieden', '2005-09-14', 17);

-- Vagabond (manga_id 18)
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (171, 'Kapitel 1 - Musashi', '1998-09-03', 18);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (172, 'Kapitel 2 - Takezo', '1998-09-10', 18);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (173, 'Kapitel 3 - Der Weg des Schwertes', '1998-09-17', 18);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (174, 'Kapitel 4 - Otsu', '1998-09-24', 18);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (175, 'Kapitel 5 - Kojiro', '1998-10-01', 18);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (176, 'Kapitel 6 - Das Duell', '1998-10-08', 18);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (177, 'Kapitel 7 - Der Meister', '1998-10-15', 18);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (178, 'Kapitel 8 - Zen', '1998-10-22', 18);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (179, 'Kapitel 9 - Die Reise', '1998-10-29', 18);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (180, 'Kapitel 10 - Erleuchtung', '1998-11-05', 18);

-- Slam Dunk (manga_id 19)
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (181, 'Kapitel 1 - Hanamichi Sakuragi', '1990-10-01', 19);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (182, 'Kapitel 2 - Basketball', '1990-10-08', 19);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (183, 'Kapitel 3 - Das Genie', '1990-10-15', 19);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (184, 'Kapitel 4 - Rukawa', '1990-10-22', 19);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (185, 'Kapitel 5 - Akagi', '1990-10-29', 19);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (186, 'Kapitel 6 - Das Training', '1990-11-05', 19);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (187, 'Kapitel 7 - Das Turnier', '1990-11-12', 19);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (188, 'Kapitel 8 - Ryonan', '1990-11-19', 19);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (189, 'Kapitel 9 - Sendoh', '1990-11-26', 19);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (190, 'Kapitel 10 - Das Finale', '1990-12-03', 19);

-- Yu Yu Hakusho (manga_id 20)
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (191, 'Kapitel 1 - Yusuke stirbt', '1990-12-03', 20);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (192, 'Kapitel 2 - Wiedergeburt', '1990-12-10', 20);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (193, 'Kapitel 3 - Der Detektiv', '1990-12-17', 20);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (194, 'Kapitel 4 - Kuwabara', '1990-12-24', 20);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (195, 'Kapitel 5 - Hiei', '1990-12-31', 20);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (196, 'Kapitel 6 - Kurama', '1991-01-07', 20);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (197, 'Kapitel 7 - Das Turnier', '1991-01-14', 20);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (198, 'Kapitel 8 - Toguro', '1991-01-21', 20);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (199, 'Kapitel 9 - Die Dunkelwelt', '1991-01-28', 20);
INSERT INTO chapter (chapter_id, name, published_at, manga_manga_id) VALUES (200, 'Kapitel 10 - Das Finale', '1991-02-04', 20);