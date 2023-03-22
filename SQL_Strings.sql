/*SQL String Functions*/

/*Create database for book shop*/
CREATE DATABASE book_shop;

/*use that database*/
USE book_shop;

/*create table book*/
CREATE TABLE books (
    book_id INT AUTO_INCREMENT,
    title VARCHAR(100),
    author_fname VARCHAR(100),
    author_lname VARCHAR(100),
    released_year INT,
    stock_quantity INT,
    pages INT,
    PRIMARY KEY (book_id)
);
 
 
 /*insert values into the table*/
 INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

/*show all values in the table*/
SELECT 
    *
FROM
    books;

/*describe books*/
DESC books;

/*concat function*/

SELECT 
    CONCAT(author_fname, '!!!')
FROM
    books;
SELECT 
    CONCAT(author_fname, ' ', author_lname) AS author_name
FROM
    books;

/*2. concat with separate concat_ws*/
SELECT 
    CONCAT_WS('-', title, author_fname, author_lname)
FROM
    books;


/*substring*/
SELECT 
    title
FROM
    books;
SELECT 
    SUBSTRING(title, 1, 15)
FROM
    books;
SELECT 
    SUBSTRING(author_fname, 1, 1) AS initial, author_lname
FROM
    books;

/*combine concat and substring together*/
SELECT 
    CONCAT(SUBSTR(title, 1, 10), '...') AS short_title
FROM
    books;

SELECT 
    CONCAT(SUBSTR(author_fname, 1, 1),
            '.',
            SUBSTR(author_lname, 1, 1),
            '.') AS author_initials
FROM
    books;


/*replace string function - replace portions of string with other replacable strings*/
SELECT 
    REPLACE(title, ' ', '-')
FROM
    books;

/*Reverse*/
SELECT 
    REVERSE(title)
FROM
    books;
    
SELECT REVERSE(NULL);

SELECT 
    REVERSE(author_fname)
FROM
    books;
    
SELECT 
    CONCAT(author_fname, REVERSE(author_fname)) AS palindrome
FROM
    books;

/*char-length*/
SELECT CHAR_LENGTH('hello'); /*return the length of the word from h to o*/
SELECT LENGTH('美 王');  /*returns no of bytes the charater was stored in*/
SELECT 
    CHAR_LENGTH(title) AS title_length, title
FROM
    books;

/*upper and lower case*/
SELECT 
    UCASE(title)
FROM
    books;
SELECT 
    CONCAT('I LOVE', UPPER(title), ' !!!')
FROM
    books;

/*other string functions*/

SELECT INSERT('hello  Bobby', 6, 0, ' there');
SELECT INSERT('hello  Bobby', 6, 4, ' there');
SELECT LEFT('omdhahalol!!', 3);
SELECT RIGHT('omdhahalol!!', 5);
SELECT 
    LEFT(author_lname, 1)
FROM
    books;
SELECT REPEAT('ha', 4);
SELECT TRIM('  boaton');
SELECT TRIM(LEADING 'x' FROM 'xxxboatonxxx');
SELECT TRIM(TRAILING 'x' FROM 'xxxboatonxxx');
SELECT TRIM(BOTH 'x' FROM 'xxxboatonxxx');


/*excercises*/

/*reverse and uppercase the following sentence using single query - "Why does my cat look at me ith such hatred?" */
SELECT REVERSE(UCASE('Why does my cat look at me ith such hatred?')); 

/*pause and think what output will it be*/
SELECT 
    REPLACE(CONCAT('I', ' ', 'like', ' ', 'cats'),
        ' ',
        '-');

/*replace spaces with '->' in the books table and name column as title*/
SELECT 
    REPLACE(title, ' ', '->') AS title
FROM
    books;

 /* print 2 columns with forwards and backwards in forwards column author last name and backwards column author's reversed last name*/
 SELECT 
    author_lname AS forwards, REVERSE(author_lname) AS backwards
FROM
    books;
 
 /*print the column 'fullname in caps' as the authors fullname*/
 SELECT 
    CONCAT(UCASE(author_fname),
            ' ',
            UCASE(author_lname)) AS 'full name in caps'
FROM
    books;
 
 /*combine the title the 'was released in' and release year in table blurd*/
SELECT 
    CONCAT(title,
            ' was released in ',
            released_year) AS blurb
FROM
    books;
 
 /*print the title and the length of title in different column as character count*/
SELECT 
    title, CHAR_LENGTH(title) AS 'character count'
FROM
    books;
    
/*print title.... , authorfirstname,authorlastname quantity in stock in 3 different columns*/

SELECT 
    CONCAT(SUBSTR(title, 1, 10), '...') AS 'short title',
    CONCAT(author_lname, ',', author_fname) AS author,
    CONCAT(stock_quantity, ' in stock') AS quantity
FROM
    books;
 
 










