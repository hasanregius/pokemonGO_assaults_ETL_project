DROP DATABASE pokemon_police_db;

CREATE DATABASE pokemon_police_db;
USE pokemon_police_db;

CREATE TABLE pokemon (
  s2_id BIGINT PRIMARY KEY,
  s2_token INT,
  num INT,
  name TEXT,
  lat DOUBLE(8,6),
  lng DOUBLE(8,6),
  encounter_ms BIGINT,
  disppear_ms BIGINT
);

CREATE TABLE police (
  inc_num BIGINT PRIMARY KEY,
  category TEXT,
  license_count INT,
  descr TEXT,
  day_of_week TEXT,
  dt DATE,
  tm TIME,
  district TEXT,
  resolution TEXT,
  address TEXT,
  lng TEXT,
  lat TEXT,
  location TEXT,
  pdID BIGINT
);

SELECT * FROM pokemon;
SELECT * FROM police;

SELECT
	p.id,
    p.premise_name,
    c.county_name
FROM premise p, county c
WHERE p.county_id=c.county_id;
