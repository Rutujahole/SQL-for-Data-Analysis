/* Refinig Selections - refine our select statements like order by sales or get  top most sold books ...etc, limit no of results we get */ 

/*distinct*/
SELECT DISTINCT
    author_lname
FROM
    books;
SELECT DISTINCT
    CONCAT(author_lname, ' ', author_fname)
FROM
    books;
SELECT DISTINCT
    author_lname, author_fname, released_year
FROM
    books;

/*order by - sort by results*/
SELECT 
    book_id, author_fname, author_lname
FROM
    books
ORDER BY author_fname;  /*by default it orders in asc order*/

SELECT 
    book_id, author_fname, author_lname
FROM
    books
ORDER BY author_fname DESC;

SELECT 
    title, pages
FROM
    books
ORDER BY pages DESC;

SELECT 
    title, pages
FROM
    books
ORDER BY released_year DESC;

SELECT 
    title, pages,released_year
FROM
    books
ORDER BY released_year;

SELECT 
    book_id, author_lname, author_fname, pages
FROM
    books
ORDER BY 4; /*4- means the 4th column in select statement*/

SELECT 
    author_lname, author_fname, title, released_year
FROM
    books
ORDER BY author_lname , released_year DESC;

SELECT 
    CONCAT(author_fname, ' ', author_fname) AS author
FROM
    books
ORDER BY author;

/*limit - controls the no of results we get back*/
SELECT 
    book_id, title, released_year
FROM
    books
ORDER BY released_year DESC
LIMIT 10; /*recent books that were published*/

SELECT 
	released_year, book_id, title
FROM
    books
ORDER BY released_year DESC
LIMIT 5,10;

SELECT 
    title
FROM
    books
ORDER BY title
LIMIT 14;

SELECT 
    title
FROM
    books
ORDER BY title
LIMIT 14 , 877437;


