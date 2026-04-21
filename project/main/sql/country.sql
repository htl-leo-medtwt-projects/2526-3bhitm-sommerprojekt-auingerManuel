CREATE TABLE country (
    country_id  INT NOT NULL AUTO_INCREMENT,
    countryname VARCHAR(30),
    shortcut    VARCHAR(2),
    PRIMARY KEY (country_id)
);

INSERT INTO country (countryname, shortcut) VALUES ('Deutschland', 'DE');
INSERT INTO country (countryname, shortcut) VALUES ('Österreich', 'AT');
INSERT INTO country (countryname, shortcut) VALUES ('Schweiz', 'CH');
INSERT INTO country (countryname, shortcut) VALUES ('United States', 'US');
INSERT INTO country (countryname, shortcut) VALUES ('United Kingdom', 'GB');
INSERT INTO country (countryname, shortcut) VALUES ('Frankreich', 'FR');
INSERT INTO country (countryname, shortcut) VALUES ('Japan', 'JP');
INSERT INTO country (countryname, shortcut) VALUES ('China', 'CN');
INSERT INTO country (countryname, shortcut) VALUES ('Brasilien', 'BR');
INSERT INTO country (countryname, shortcut) VALUES ('Australien', 'AU');