CREATE DATABASE db101;

CREATE TABLE developers(
  id serial PRIMARY KEY,
  name varchar(50),
  surname varchar(50),
  city_id integer,
  created_at timestamp DEFAULT current_timestamp
);

CREATE TABLE cities(
  id serial PRIMARY KEY,
  name varchar(50),
  country varchar(50),
  population integer,
  created_at timestamp DEFAULT current_timestamp
);

ALTER TABLE developers
ADD FOREIGN KEY (city_id)
REFERENCES cities
ON DELETE RESTRICT;

INSERT INTO developers(name, surname, city_id)
VALUES('Ömür', 'Turan', 1);

INSERT INTO cities(name, country, population)
VALUES
('Yverdon', 'Switzerland', 30000),
('İstanbul', 'Turkey', 14000000),
('İzmir', 'Turkey', 7000000),
('Ankara', 'Turkey', 5000000),
('Paris', 'USA', 3500),
('Paris', 'France', 12000000);

INSERT INTO developers(name, surname, city_id)
VALUES
('Fabien', 'Loup', 1),
('Emir', 'Bostan', 3),
('Mike', 'Soylu', 2),
('Ömür', 'Turan', 2),
('Ibrahim', 'Sagiroglu', 4),
('Samed', 'Duzcay', 2),
('Fehmi', 'Yemeni', 6);

CREATE TABLE languages(
  id serial PRIMARY KEY,
  name varchar(50),
  created_at timestamp DEFAULT current_timestamp
);

ALTER TABLE languages
ADD COLUMN is_compiled BOOL;

CREATE TABLE developer_languages(
  id serial PRIMARY KEY,
  developer_id integer REFERENCES developers(id),
  language_id integer REFERENCES languages(id)
);

INSERT INTO languages(name, is_compiled)
VALUES
('Javascript', false),
('Ruby', false),
('C++', true),
('Go', true);


INSERT INTO developer_languages(developer_id, language_id)
VALUES
(2,2),
(6,1),
(6,4);


