# MYSQL COMPONENT OF ETL PROJECT

# 1. CREATED pokemon_police_db
USE pokemon_police_db;

# 2. DROP EXISTING TABLES
DROP TABLE pokemon;
DROP TABLE police;

# 3. CREATE POKEMON TABLE
CREATE TABLE pokemon (
  id INT PRIMARY KEY,
  name TEXT,
  lat DOUBLE(8,5),
  lng DOUBLE(8,5)
);

# 4. CREATE POLICE TABLE
CREATE TABLE police (
  inc_num BIGINT(19) PRIMARY KEY,
  descr TEXT,
  district TEXT,
  resolution TEXT,
  lng DOUBLE(8,5),
  lat DOUBLE(8,5)
  );

# 5. VALIDATE RESULTS
SELECT * FROM pokemon;
SELECT * FROM police;

# 6. SUM RESULTS PER SF DISTRICT
SELECT
	COUNT(pk.id) AS id_count,
    pk.name,
    po.descr,
    po.resolution,
    po.district
FROM pokemon pk, police po
WHERE pk.lat LIKE '37.7%'
AND pk.lng LIKE '-122.3%'
GROUP BY po.district, po.descr;
