USE shirts_db;
DESC shirts;

/* Inserting the values into the table and showing all inserted values into the table.*/
INSERT INTO shirts ( article, color, shirts_size, last_worn)
VALUES
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

/* operations performed on data inserted*/

/*Adding a new shirts values into the table and showing all values - */
INSERT INTO shirts ( article, color, shirts_size, last_worn)
VALUES ('polo shirt' , 'purple' , 'M' , '50');

/*Select all shirts but only print out article and color.*/
SELECT article,color FROM shirts;

/*Select all medium shirts , print out everything but shirts_id*/
SELECT article, color, shirts_size, last_worn FROM shirts WHERE shirts_size = 'M';

/*Update all polo shirts , change their size to L*/
SELECT * FROM shirts WHERE article = 'polo shirt';
UPDATE shirts SET shirts_size = 'L' WHERE article = 'polo shirt';
SELECT * FROM shirts WHERE article = 'polo shirt';

/* Update the shirt last worn 15 days ago, change last worn to 0*/
SELECT * FROM shirts;
UPDATE shirts SET last_worn = '0' WHERE last_worn = '15';
SELECT * FROM shirts;

/*Update all white shirts, change size to 'XS' and color to 'off white'*/
SELECT * FROM shirts WHERE color = 'white';
UPDATE shirts SET shirts_size = 'XS', color = 'off white' WHERE color = 'white';
SELECT * FROM shirts WHERE color = 'off white';

/*delete all old shirts , last worn 200 days ago*/
SELECT * FROM shirts;
DELETE FROM shirts WHERE last_worn = '200';
SELECT * FROM shirts;

/*delete all tank tops*/
SELECT * FROM shirts;
DELETE FROM shirts WHERE article = 'tank top';
SELECT * FROM shirts;

/*delete all shirts*/
DELETE FROM shirts;
SELECT * FROM shirts;
DESC shirts;

/*drop the entire shirts table*/
DROP TABLE shirts;
DESC shirts;









