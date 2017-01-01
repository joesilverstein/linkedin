DROP TABLE POPULATIONS;

BEGIN TRANSACTION;

/* Create a table called NAMES */
CREATE TABLE POPULATIONS
(
    continent VARCHAR(255),
    country VARCHAR(255),
    population INTEGER
);

/* Create few records in this table */
INSERT INTO POPULATIONS VALUES('North America','United States of America',324118787);
INSERT INTO POPULATIONS VALUES('North America','Canada',36286378);
INSERT INTO POPULATIONS VALUES('North America','Mexico',128632004);
INSERT INTO POPULATIONS VALUES('Asia','China',1382323332);
INSERT INTO POPULATIONS VALUES('Asia','India',1326801576);
INSERT INTO POPULATIONS VALUES('Asia','Vietnam',94444200);
COMMIT;

/* Display all the records from the table */
SELECT continent, country, MAX(population)
FROM POPULATIONS
GROUP BY continent
ORDER BY population DESC
;

