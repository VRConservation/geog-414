SELECT * FROM duckdb_extensions();
INSTALL spatial;
INSTALL parquet;
LOAD spatial;
LOAD parquet;
CREATE TABLE cities AS SELECT * FROM 'https://open.gishub.org/data/duckdb/cities.csv';
CREATE TABLE countries AS SELECT * FROM 'https://open.gishub.org/data/duckdb/countries.csv';
FROM cities;
FROM countries
SELECT * FROM cities LIMIT 10;
SELECT name, country FROM cities LIMIT 10;
SELECT COUNT(*) FROM cities;
SELECT MAX(population) FROM cities;
SELECT * FROM cities ORDER BY country LIMIT 5;
SELECT * FROM cities WHERE country='USA';
SELECT * FROM cities WHERE country='USA' AND population>1000000;
CREATE TABLE cities (
    name VARCHAR,
    lat DECIMAL,
    lon DECIMAL,
);
SHOW TABLES;
DESCRIBE cities;